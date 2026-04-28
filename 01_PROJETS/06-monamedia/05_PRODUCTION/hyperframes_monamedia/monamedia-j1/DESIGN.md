# DESIGN — Monamedia J1 Manifesto

## Style Prompt

Cinematic premium dark manifesto. Silent pulse — no voice, only typography, micro-flashes, and tension. Inspired by Apple keynote teasers, Calm app reveal moments, and theFIVE's signature dark frames. Every line lands like a verdict. The red is rare and surgical: it flashes only on negations, transitions, and the closing manifesto. Anti-shouty, anti-grunge — disciplined silence that builds toward a single climactic statement.

## Colors

- `#0A0A0A` — canvas (near-black, never pure black to avoid H.264 banding)
- `#FFFFFF` — primary text (full white for max contrast)
- `#E10E29` — accent / Monamedia signature red (used sparingly: flashes, climax, logo)
- `#1A1A1A` — subtle elevation (background depth)
- `#888888` — secondary text (line numbers, tags)

## Typography

- **Display**: `Manrope`, `ExtraBold` 800 — for the main lines (140-180px on vertical 1080)
- **Climax**: `Manrope`, `Black` 900 — for the final tagline (220px)
- **Tag/meta**: `Manrope`, `Medium` 500 — for any micro-text

Letter-spacing: -0.02em on display, +0.02em on tag/meta.

## Motion Rules

- **Entrance**: subtle y-translate (30-60px) + opacity, `power3.out` 0.6-0.9s
- **Exit**: handled by transitions only (red flash cuts), never `gsap.to(opacity:0)` except final
- **Negations** ("Not..."): glitch shake (x: ±4px, 80ms cycles, 3 cycles)
- **Climax** ("We are the only ones"): scale-from-1.05, no blur, `power4.out` 1.0s
- **Red flashes**: 80-120ms, full-bleed `#E10E29`, only between sections

## What NOT to Do

- ❌ No serif fonts (kills the discipline)
- ❌ No drop shadows or glows on text (cinematic ≠ kitsch)
- ❌ No gradients spanning the canvas (H.264 banding)
- ❌ No emoji, no decorative dingbats
- ❌ No exit animations except the final scene
- ❌ Red used more than 5 times in 35s (rarity = power)
