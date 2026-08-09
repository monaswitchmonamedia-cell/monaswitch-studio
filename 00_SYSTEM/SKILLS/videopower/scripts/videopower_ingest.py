#!/usr/bin/env python3
"""MonaSwitch /videopower deterministic ingest.

Input: a public/legitimately accessible social video URL or local video file.
Output: local source video, metadata, audio, even frames, scene-change frames,
contact sheet and manifest.json.

This script does NOT perform brand reasoning or marketing analysis. Those belong
to /analyze + /videopower SKILL.md.
"""

from __future__ import annotations

import argparse
import json
import math
import os
import shutil
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlparse

try:
    from PIL import Image, ImageDraw, ImageFont, ImageOps
except ImportError as exc:
    raise SystemExit("Pillow is required. Install with: python -m pip install pillow") from exc

VIDEO_EXTS = {".mp4", ".mov", ".mkv", ".webm", ".m4v", ".avi"}


def which_or_fail(name: str) -> str:
    value = shutil.which(name)
    if not value:
        raise RuntimeError(f"Missing executable: {name}")
    return value


def run(cmd: list[str], *, check: bool = True) -> subprocess.CompletedProcess:
    return subprocess.run(cmd, check=check, text=True, capture_output=True)


def is_url(value: str) -> bool:
    p = urlparse(value)
    return p.scheme in {"http", "https"} and bool(p.netloc)


def platform_from_url(value: str) -> str:
    host = urlparse(value).netloc.lower()
    if "youtu.be" in host or "youtube.com" in host:
        return "youtube"
    if "instagram.com" in host:
        return "instagram"
    if "tiktok.com" in host:
        return "tiktok"
    if "facebook.com" in host or "fb.watch" in host:
        return "facebook"
    return "unknown"


def safe_float(value, default=0.0) -> float:
    try:
        return float(value)
    except (TypeError, ValueError):
        return default


def parse_fps(rate: str | None) -> float:
    if not rate:
        return 0.0
    try:
        if "/" in rate:
            a, b = rate.split("/", 1)
            b_float = float(b)
            return float(a) / b_float if b_float else 0.0
        return float(rate)
    except (ValueError, ZeroDivisionError):
        return 0.0


def ffprobe(video: Path) -> dict:
    which_or_fail("ffprobe")
    cp = run([
        "ffprobe", "-v", "error",
        "-show_entries", "format=duration,format_name:stream=index,codec_type,codec_name,width,height,r_frame_rate",
        "-of", "json", str(video),
    ])
    return json.loads(cp.stdout)


def select_video_stream(probe: dict) -> dict:
    for stream in probe.get("streams", []):
        if stream.get("codec_type") == "video":
            return stream
    return {}


def download_url(url: str, source_dir: Path, cookies_browser: str | None) -> tuple[Path, dict]:
    which_or_fail("yt-dlp")
    out_template = str(source_dir / "source.%(ext)s")
    cmd = [
        "yt-dlp",
        "--no-playlist",
        "--write-info-json",
        "--write-thumbnail",
        "--convert-thumbnails", "jpg",
        "-f", "bv*+ba/b",
        "--merge-output-format", "mp4",
        "-o", out_template,
    ]
    if cookies_browser:
        cmd += ["--cookies-from-browser", cookies_browser]
    cmd.append(url)
    cp = run(cmd, check=False)
    if cp.returncode != 0:
        raise RuntimeError(
            "yt-dlp could not retrieve this URL. Use only content you can legitimately access.\n"
            + (cp.stderr[-3000:] if cp.stderr else "")
        )

    videos = [p for p in source_dir.iterdir() if p.is_file() and p.suffix.lower() in VIDEO_EXTS]
    if not videos:
        raise RuntimeError("Download completed but no video file was found in source/.")
    video = max(videos, key=lambda p: p.stat().st_size)

    info_files = list(source_dir.glob("*.info.json"))
    info = {}
    if info_files:
        try:
            info = json.loads(info_files[0].read_text(encoding="utf-8"))
        except Exception:
            info = {}
    return video, info


def copy_local(source: Path, source_dir: Path) -> Path:
    if not source.exists() or not source.is_file():
        raise FileNotFoundError(source)
    if source.suffix.lower() not in VIDEO_EXTS:
        raise RuntimeError(f"Unsupported local video extension: {source.suffix}")
    destination = source_dir / f"source{source.suffix.lower()}"
    if source.resolve() != destination.resolve():
        shutil.copy2(source, destination)
    return destination


def extract_audio(video: Path, audio_path: Path) -> str | None:
    which_or_fail("ffmpeg")
    cp = run([
        "ffmpeg", "-y", "-v", "error", "-i", str(video),
        "-vn", "-ac", "1", "-ar", "16000", "-c:a", "pcm_s16le", str(audio_path),
    ], check=False)
    if cp.returncode != 0 or not audio_path.exists():
        return None
    return str(audio_path)


def extract_frame(video: Path, timestamp: float, destination: Path) -> bool:
    cp = run([
        "ffmpeg", "-y", "-v", "error", "-ss", f"{timestamp:.3f}", "-i", str(video),
        "-frames:v", "1", "-q:v", "2", str(destination),
    ], check=False)
    return cp.returncode == 0 and destination.exists()


def extract_even(video: Path, duration: float, count: int, out_dir: Path) -> list[dict]:
    frames = []
    if duration <= 0:
        return frames
    count = max(4, min(count, 40))
    # Keep away from exact first/last decode edge while still covering entire clip.
    times = [duration * ((i + 0.35) / count) for i in range(count)]
    for i, timestamp in enumerate(times, 1):
        dest = out_dir / f"even-{i:03d}-{timestamp:07.2f}s.jpg"
        if extract_frame(video, timestamp, dest):
            frames.append({"timestamp": round(timestamp, 3), "path": str(dest)})
    return frames


def extract_scenes(video: Path, threshold: float, out_dir: Path, max_scenes: int) -> list[str]:
    which_or_fail("ffmpeg")
    pattern = out_dir / "scene-%03d.jpg"
    filt = f"select='gt(scene,{threshold})',scale='min(1600,iw)':-2"
    cp = run([
        "ffmpeg", "-y", "-v", "error", "-i", str(video),
        "-vf", filt, "-vsync", "vfr", "-frames:v", str(max_scenes), str(pattern),
    ], check=False)
    if cp.returncode != 0:
        return []
    return [str(p) for p in sorted(out_dir.glob("scene-*.jpg"))]


def make_contact_sheet(frame_paths: list[Path], destination: Path, cols: int = 4) -> str | None:
    if not frame_paths:
        return None
    tile_w, tile_h = 400, 255
    rows = math.ceil(len(frame_paths) / cols)
    sheet = Image.new("RGB", (cols * tile_w, rows * tile_h), (12, 12, 12))
    draw = ImageDraw.Draw(sheet)
    font = ImageFont.load_default()
    for idx, path in enumerate(frame_paths):
        try:
            image = Image.open(path).convert("RGB")
            image = ImageOps.contain(image, (tile_w - 16, tile_h - 38), method=Image.Resampling.LANCZOS)
        except Exception:
            continue
        x = (idx % cols) * tile_w
        y = (idx // cols) * tile_h
        px = x + (tile_w - image.width) // 2
        py = y + 8
        sheet.paste(image, (px, py))
        draw.text((x + 10, y + tile_h - 24), path.stem, fill=(240, 240, 240), font=font)
    sheet.save(destination, quality=92)
    return str(destination)


def write_json(path: Path, payload: dict) -> None:
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description="MonaSwitch /videopower ingest")
    parser.add_argument("input", help="Video URL or local video file")
    parser.add_argument("--output", default=None, help="Output directory")
    parser.add_argument("--frames", type=int, default=16, help="Uniform frame count (4-40)")
    parser.add_argument("--scene-threshold", type=float, default=0.30, help="FFmpeg scene change threshold")
    parser.add_argument("--max-scenes", type=int, default=32, help="Maximum scene-change frames")
    parser.add_argument("--cookies-browser", default=None, help="Optional yt-dlp browser name for legitimate logged-in access")
    args = parser.parse_args()

    now = datetime.now(timezone.utc)
    output = Path(args.output) if args.output else Path.cwd() / f"videopower-{now.strftime('%Y%m%d-%H%M%S')}"
    output = output.resolve()
    source_dir = output / "source"
    metadata_dir = output / "metadata"
    even_dir = output / "screens" / "even"
    scenes_dir = output / "screens" / "scenes"
    audio_dir = output / "audio"
    for directory in (source_dir, metadata_dir, even_dir, scenes_dir, audio_dir):
        directory.mkdir(parents=True, exist_ok=True)

    input_is_url = is_url(args.input)
    info = {}
    if input_is_url:
        platform = platform_from_url(args.input)
        video, info = download_url(args.input, source_dir, args.cookies_browser)
    else:
        platform = "local"
        video = copy_local(Path(args.input).expanduser(), source_dir)

    probe = ffprobe(video)
    video_stream = select_video_stream(probe)
    duration = safe_float(probe.get("format", {}).get("duration"))
    width = int(video_stream.get("width") or 0)
    height = int(video_stream.get("height") or 0)
    fps = parse_fps(video_stream.get("r_frame_rate"))

    metadata = {
        "input": args.input,
        "input_type": "url" if input_is_url else "file",
        "platform": platform,
        "yt_dlp": info,
        "ffprobe": probe,
    }
    metadata_path = metadata_dir / "metadata.json"
    write_json(metadata_path, metadata)

    audio_path = audio_dir / "audio.wav"
    audio_result = extract_audio(video, audio_path)
    even = extract_even(video, duration, args.frames, even_dir)
    scenes = extract_scenes(video, args.scene_threshold, scenes_dir, max(1, min(args.max_scenes, 80)))

    sheet_candidates = [Path(item["path"]) for item in even]
    if scenes:
        sheet_candidates += [Path(p) for p in scenes[:8]]
    contact = make_contact_sheet(sheet_candidates[:24], output / "screens" / "contact-sheet.jpg")

    manifest = {
        "input": args.input,
        "input_type": "url" if input_is_url else "file",
        "platform": platform,
        "source_video": str(video),
        "duration_seconds": round(duration, 3),
        "width": width,
        "height": height,
        "fps": round(fps, 3),
        "screens_even": even,
        "screens_scenes": scenes,
        "contact_sheet": contact,
        "audio": audio_result,
        "metadata": str(metadata_path),
        "created_at": now.isoformat(),
    }
    write_json(output / "manifest.json", manifest)

    print(json.dumps(manifest, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except KeyboardInterrupt:
        raise SystemExit(130)
    except Exception as exc:
        print(f"VIDEOPOWER ERROR: {exc}", file=sys.stderr)
        raise SystemExit(1)
