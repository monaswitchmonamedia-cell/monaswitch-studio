# /videopower — Contrat de sortie

## Table des matières

1. Arborescence
2. `manifest.json`
3. `brand_context.md`
4. `ANALYSE.md`
5. Covers
6. Captions
7. Résumé utilisateur

---

## 1. Arborescence

```text
videopower/YYYY-MM-DD_slug/
├── source/
│   └── source.ext
├── metadata/
│   ├── metadata.json
│   └── source.info.json (si yt-dlp)
├── screens/
│   ├── even/
│   ├── scenes/
│   └── contact-sheet.jpg
├── audio/
│   └── audio.wav
├── thumbnails/
├── prompts/
├── captions/
├── brand_context.md
├── manifest.json
└── ANALYSE.md
```

## 2. `manifest.json`

Champs attendus :

```json
{
  "input": "...",
  "input_type": "url|file",
  "platform": "youtube|instagram|tiktok|facebook|unknown|local",
  "source_video": "source/source.mp4",
  "duration_seconds": 0,
  "width": 0,
  "height": 0,
  "fps": 0,
  "screens_even": [],
  "screens_scenes": [],
  "contact_sheet": "screens/contact-sheet.jpg",
  "audio": "audio/audio.wav",
  "metadata": "metadata/metadata.json",
  "created_at": "ISO8601"
}
```

## 3. `brand_context.md`

```markdown
# BRAND CONTEXT

Project:
Brand:
Domain:
Source of truth:

## Logos
- ...

## Visual system
- colors:
- typography:
- layout codes:

## Voice
- ...

## CTA verified
- ...

## Legal / compliance
- ...

## Forbidden
- ...
```

## 4. `ANALYSE.md`

```markdown
# VIDEOPOWER ANALYSIS — [TITLE]

Source:
Platform:
Date:
Duration:
Format:
Brand:

## Executive summary

## /HOOK

## /STRUCTURE
| Time | Scene | Function | Retention |
|---|---|---|---|

## /RETENTION

## /EMOTION

## /MARKETING

## /VIRAL

## /CLONEVIRAL
Status: available / unavailable
Key findings:

## /SCREENS
| Rank | Timestamp | Frame | Why | Thumbnail score |
|---|---:|---|---|---:|

### BEST FACE
### BEST SUBJECT
### BEST ACTION
### BEST CURIOSITY
### BEST PROOF

## /THUMBNAILS

### Vertical A — Curiosity
Hook:
Composition:
Emotion:
Reference frames:
Generation brief:
Overlay assets:

### Vertical B — Need/Benefit
...

### 16:9 A — Curiosity
...

### 16:9 B — Need/Benefit
...

## /CAPTIONS
### Instagram
### TikTok
### Facebook
### YouTube

## /TITLES YOUTUBE
A.
B.
C.

## /TAGS YOUTUBE

## /QA

## Recommendation
Best cover:
Best title:
Best hook:
Next action:
```

## 5. Covers

Nommer systématiquement :

```text
THUMB_VERTICAL_A_CURIOSITY.png
THUMB_VERTICAL_B_BENEFIT.png
THUMB_YOUTUBE_A_CURIOSITY_16x9.png
THUMB_YOUTUBE_B_BENEFIT_16x9.png
```

Si la scène est générée sans branding :

```text
SCENE_VERTICAL_A_RAW.png
SCENE_YOUTUBE_A_RAW.png
```

Puis garder séparément le master avec vrais logos.

## 6. Captions

Créer si nécessaire :

```text
captions/instagram.txt
captions/tiktok.txt
captions/facebook.txt
captions/youtube.txt
captions/youtube-tags.txt
```

## 7. Résumé utilisateur

À la fin, ne pas noyer Félix dans la technique.

Afficher :

1. ce qui a été compris ;
2. meilleure mécanique virale ;
3. meilleure cover A/B ;
4. fichiers créés ;
5. éventuel blocage ;
6. prochaine action recommandée.
