# RÉFÉRENCE — theFIVE.MP4 — Analyse complète

**Statut** : référence officielle Monamedia
**Date analyse** : 2026-04-28
**Méthode utilisée** : ffmpeg + ffprobe (fallback automatique — `claude-video-vision` MCP non activé dans la session, voir section "Méthode utilisée" ci-dessous)
**Source vidéo** : `04_ASSETS/videos_brutes/theFIVE.MP4`
**Audio extrait** : `04_ASSETS/audio_extracts/theFIVE_audio.mp3` (1.4 MB, 192 kbps)
**Frames analysées** : 12 originales (`theFIVE_frames/`) + 16 nouvelles (`theFIVE_frames_v2/`) = **28 frames** au total

---

## 0. MÉTHODE UTILISÉE

### Stratégie hybride (validée par Felix)
1. ✅ Vérification skill `claude-video-vision` → cloné dans `~/.claude/skills/claude-video-vision/`
2. ❌ MCP server du skill **non activé** dans cette session (pas dans `claude mcp list`) — l'activation nécessite `/setup-video-vision` + redémarrage Claude Code + clé Gemini API gratuite
3. ✅ **Fallback automatique** sur `ffmpeg` + `ffprobe` + analyse visuelle des frames PNG par lecture native Claude Code

### Outils utilisés
- `ffprobe` : métadonnées vidéo + audio (codec, durée, dimensions, bitrate, fps)
- `ffmpeg -vf scene` : détection scene changes (seuil 0.3) → **57 cuts en 60.77s**
- `ffmpeg -af silencedetect` : détection silences (seuil -30 dB / 0.5s) → 4 silences
- `ffmpeg -af ebur128` : loudness EBU R128 → **-17 LUFS intégré, peak -0.1 dBFS**
- `ffmpeg -ss X -frames:v 1` : extraction de 16 frames sondes (toutes les ~3.75s)
- `Read` Claude Code : analyse visuelle native des PNG

### Ce qui n'est pas dans cette analyse
- **Transcription audio mot-à-mot** (nécessiterait Whisper local ou Gemini API)
- **Tags audio non-speech** détaillés (musique vs voix, BPM exact)
- **Commentaire sémantique** image-par-image type Gemini Vision
- → ces éléments deviendront accessibles quand `/setup-video-vision` sera lancé avec backend Gemini API gratuit

---

## 1. MÉTADONNÉES TECHNIQUES

| Champ | Valeur |
|---|---|
| Conteneur | MP4 (`avc1` + `mp4a`) |
| Codec vidéo | H.264 High profile L3.1 |
| Résolution | **1280 × 720** (HD 16:9 horizontal) |
| Frame rate | 30 fps (avg ~30 fps) |
| Durée | **60.77 s** (1821 frames) |
| Bitrate vidéo | 3.28 Mbps |
| Color | yuv420p · BT.709 / SMPTE 170M · TV range |
| Codec audio | AAC LC stéréo 44.1 kHz · 125 kbps |
| Durée audio | 60.76 s |
| Loudness intégré | **-17.0 LUFS** (proche standard streaming -16 LUFS) |
| Loudness range | 12.9 LU |
| True peak | -0.1 dBFS (très chaud, frôle le clipping) |
| Création | 2026-04-21 09:54 UTC |
| Taille fichier | 24.7 MB |

**Observation** : format HORIZONTAL 16:9 (≠ J1 V2 qui est 9:16 vertical). Cette vidéo n'est PAS native social verticale — elle est conçue pour YouTube/site/présentation, pas Reels/TikTok. Pour TikTok/Reels/Shorts, un re-cadrage ou re-tournage 9:16 est nécessaire.

---

## 2. STRUCTURE NARRATIVE (chapitres)

D'après les 28 frames analysées + 57 scene-cuts détectés :

| Acte | Timestamps | Texte écran | Visuel | Rôle dramatique |
|---|---|---|---|---|
| **A0 — Hook** | 0–3 s | `EVERY DAY` | aerial city by night, néons jaunes/rouges | Ouverture cinématique large |
| **A1 — Problème 1** | 3–7 s | `MILLIONS WASTED` | femme afro pull rouge sur smartphone, café chaud | Inefficience publicitaire |
| **A2 — Problème 2** | 7–11 s | `NO TRUST` | jeune homme casquette regardant son écran, bar sombre | Défiance / impressions creuses |
| **A3 — Tension** | 11–13 s | (sans texte) | main féminine + smartphone, lumière tungstène | Beat respiration |
| **A4 — Contre-utopie 1** | 13–18 s | (sans texte) | 4 femmes peignoir spa, vue plongeante, smartphones | Bonheur conso de scroll |
| **A5 — Contre-utopie 2** | 18–22 s | `REAL ACTION` | couple sur lit rose/blanc, smartphones | Le scroll devient action |
| **A6 — Solution démo 1** | 22–26 s | `EVERY VIEW IS VERIFIED` | smartphone tenu, app Monamedia rouge, **band rouge bas** | Promesse produit |
| **A7 — Solution démo 2** | 26–30 s | (sans texte) | smartphone face frontale, app feed Monamedia, escalier marbre | Démo continue |
| **A8 — Bénéfice user** | 30–34 s | `€0.01 DONATED` | gros plan smartphone app, donations live | Récompense concrète |
| **A9 — Explainer infographic** | 34–38 s | `theFIVE™` + 4 KPI cycle | mockup 2 phones blancs + diagramme circulaire | Pitch "pourquoi théFIVE" |
| **A10 — Social proof** | 38–43 s | `THOUSANDS ARE JOINING EVERY DAY` | groupe diversifié café, smartphones | Pression sociale |
| **A11 — Bénéfice annonceurs** | 43–48 s | `NO WASTED BUDGET` | entrepreneur en costume jetant des billets | Impact business |
| **A12 — Bénéfice business locaux** | 48–52 s | `ADVERTISING THAT GROWS BUSINESSES` | couple devant café "DAILY BEAN" | Local biz |
| **A13 — Bénéfice impact social** | 52–55 s | `AND GIVES BACK TO PEOPLE` | femme âgée + jeune don textile | Mission sociale |
| **A14 — Outro** | 55–60.7 s | (logo final probable, fond clair) | écran beige/gris vide à 56s | Fade out / logo |

**Densité narrative** : **15 actes en 60 s** — pacing publicitaire haute intensité (~4 s par message).

---

## 3. PATTERNS VISUELS RÉCURRENTS

### Typographie écran
- **All caps** systématique
- **Sans-serif bold** (style Inter / Helvetica Bold proche, à confirmer)
- **Position** : centered horizontally + bottom-third (~75-80% hauteur)
- **Couleur** : blanc pur sur tous les fonds
- **Pas de stroke ni shadow visible** — repose sur fond pré-assombri
- **Pas de transition lettre-par-lettre** — apparition par scène entière

### Palette couleurs (extraite des frames)
| Type de scène | Tons dominants |
|---|---|
| Aerial city night | jaune néon `~#E5B85C` + rose `~#D44F86` + nuit `~#1A1218` |
| Scènes humaines lumière chaude | tungstène `~#B07C3D` + rouges saturés `~#C42333` (pull) |
| Contre-utopie spa | blanc cassé `~#EFE7E1` + rose poudré `~#E9C9C5` |
| Démo app Monamedia | **rouge Monamedia officiel** `#E10E29` (band rouge bas) + blanc |
| Infographic theFIVE | gris très clair `~#F2F4F8` + accents bleu pastel + rouge pin |
| Outro | beige neutre `~#EBEBEB` (très clair) |

### Composition / cadrage
- **Mix horizontal et serré** — beaucoup de close-ups main + smartphone
- **Plans aériens** uniquement à l'ouverture (vol au-dessus ville)
- **Top-down** sur les scènes contre-utopie (4 femmes spa, couple lit) — esthétique très "lifestyle Instagram"
- **Frontal smartphone** sur les démos produit (UI Monamedia visible)

### Band rouge signature
À partir de A6 (démo produit, 22 s), une **bande rouge `#E10E29` couvre le bas du cadre** — devient le marqueur visuel "moment Monamedia". Présente sur A6, A7 (partiellement), A8 — disparaît hors démo produit. **C'est un device d'identification produit fort**.

---

## 4. RYTHME & PACING

| Métrique | Valeur |
|---|---|
| Scene cuts détectés (seuil 0.3) | **57** sur 60.77 s |
| Cut moyen | **~1.07 s** entre changements visuels |
| Plus longue scène continue | ~3 s (aerial opening A0, démo A7) |
| Plus courts plans | < 0.5 s (entre A1 et A2 par ex) |
| Silences audio | 4 segments : `13.0–13.6 s`, `53.0–54.3 s`, `54.9–55.5 s`, `58.2–60.8 s` (outro) |

**Conclusion rythme** : pub commerciale **dense et rapide** type Apple keynote teaser / Nike commercial. Aucun beat n'est laissé à respirer plus de 3 s. Les 4 silences audio sont des **respirations dramatiques** placées aux pivots narratifs.

---

## 5. AUDIO — caractéristiques

- **Codec** : AAC LC 125 kbps stéréo 44.1 kHz
- **Loudness intégré** : -17.0 LUFS (proche -16 LUFS standard streaming ; un peu plus chaud)
- **Loudness range** : 12.9 LU (assez dynamique pour une pub)
- **True peak** : -0.1 dBFS (frôle le clipping, mastering aggressif)
- **Silences** : 4 segments dont 2.6 s de fade-out final
- **Hypothèse** (non vérifiée sans transcription) : musique cinematic + sound design + probable voix off ou seulement texte écran. La densité de cuts + LUFS chaud suggère un track avec **build-up + drops** synchronisés.

**Action recommandée pour analyse audio fine** :
```bash
# Estimation BPM rapide
ffmpeg -i theFIVE_audio.mp3 -af "loudnorm=print_format=json" -f null -
# Ou en activant claude-video-vision avec backend Gemini API gratuit
```

---

## 6. PATTERNS RÉUTILISABLES POUR PRODUCTIONS J1→J7

### À conserver (forces de theFIVE)
1. **Texte all caps blanc bottom-centered** — discipline brand visible immédiatement
2. **Band rouge `#E10E29` bas de cadre** lors des moments produit — signature Monamedia ultra forte
3. **Pacing rapide** (1 cut / sec) — ne laisse pas l'attention décrocher
4. **Mix scènes humaines réelles + smartphone close-up** — alterne émotion + démo
5. **Structure problème → solution → social proof → bénéfices multiples → outro** (15 actes)
6. **Top-down ou frontal** sur les scènes "lifestyle" (≠ angles documentaires classiques)
7. **Silences dramatiques** placés aux pivots (4 dans la vidéo)

### À éviter (faiblesses ou inadaptations)
1. **Format 16:9 horizontal** — pas natif social vertical
2. **Outro fond clair** — peut sembler abrupt après la densité visuelle précédente
3. **Pas de logo Monamedia clair en fin** (à 56-60 s, l'écran est beige neutre — risque de manque d'ancrage brand)
4. **Densité 15 actes en 60s** — peut-être trop pour un Reels (où l'attention dispo est ~30 s max)
5. **Coquille "POPLE/PEOPLE"** mentionnée dans `_TRACKER.md` — non observée dans frame 11 actuel (peut-être déjà corrigée ou présente sur une autre frame)

---

## 7. RECOMMANDATIONS POUR ALIGNER LA PRODUCTION

### Pour les 7 packs Monamedia (J1→J7)

**Si l'on veut un alignement fort avec theFIVE** :
- Conserver `#E10E29` rouge en accent + en band bas pour les moments démo
- Texte all caps blanc bottom — code visuel immédiatement reconnaissable
- Pacing 1 cut/sec sur les formats reel court (J1, J3 = manifestos compressés à 30-40 s)
- Structure problème → solution → preuve dans CHAQUE pack court

### Pour le J1 Manifesto (déjà produit en V2)

La V2 actuelle (silent manifesto dark fond noir, 9 scènes procédurales SVG/CSS) **diverge** stylistiquement de theFIVE :

| Critère | theFIVE | J1 V2 actuelle |
|---|---|---|
| Fond | Lumière chaude + clair | Noir profond |
| Personnages | Humains réels variés | Aucun humain (procédural) |
| Cuts | 1/sec dense | ~3-4 s par scène |
| Texte | All caps blanc bottom | All caps blanc, position varie |
| Rouge band | Signature majeure | Présente seulement scène 7-8 |
| Mood | Pub commerciale énergique | Manifesto silencieux dramatique |

**Décision Felix attendue** :
- (a) **Aligner J1 V3 sur le style theFIVE** (lumière + humains + cuts rapides + band rouge constante) → "vraie vidéo cinéma" demandée
- (b) **Conserver J1 V2 dark abstract** comme variation premium pour les contextes plus "minimalistes haut de gamme" et produire J3/J5 alignés theFIVE pour la cohérence brand globale
- (c) **V3 hybride** : ouverture dark abstract (J1 V2 style) → bascule vers humains/lumière chaude theFIVE-style en seconde partie

---

## 8. ASSETS GÉNÉRÉS PAR CETTE ANALYSE

| Fichier | Chemin | Taille |
|---|---|---|
| Audio MP3 | `04_ASSETS/audio_extracts/theFIVE_audio.mp3` | 1.4 MB |
| 16 frames sondes | `04_ASSETS/references_visuelles/theFIVE_frames_v2/scan_*.png` | ~4 MB total |
| 12 frames originales | `04_ASSETS/references_visuelles/theFIVE_frames/frame_*.png` | (inchangées) |
| Ce rapport | `02_BRAND_KIT/REFERENCE_THE_FIVE_ANALYSIS.md` | ~14 KB |

---

## 9. PROCHAINES ÉTAPES SUGGÉRÉES

1. ⏸️ **Validation Felix** sur ce rapport (avant toute production nouvelle)
2. 🔵 Activation `/setup-video-vision` avec backend Gemini API gratuit → débloquera transcription mot-à-mot + tags audio
3. 🔵 Décision sur la direction artistique J1/J3/J5 (option a / b / c section 7)
4. 🔵 Si direction (a) ou (c) retenue : production J1 V3 alignée theFIVE (humains réels via stock footage ou tournage iPhone Felix, band rouge constante, cuts rapides)
5. 🔵 Mise à jour `MOOD_EXTRACT_MONAMEDIA.md` avec les patterns confirmés (band rouge signature, all caps bottom, structure 15 actes, palette précise)

---

## CHANGELOG

| Date | Version | Source |
|---|---|---|
| 2026-04-28 | V1 (initiale) | ffmpeg + 28 frames PNG, sans transcription audio |
