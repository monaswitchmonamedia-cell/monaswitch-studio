---
name: videopower
description: Orchestre l'analyse complète d'une vidéo ou d'un lien YouTube, Instagram, TikTok ou Facebook pour MonaSwitch. Utilise la skill analyze comme source de vérité pour détecter la marque, charger charte, logos, CTA et garde-fous, puis récupère la vidéo, extrait screenshots/audio/métadonnées, analyse hook/rétention/marketing/viral, génère un ANALYSE.md, des briefs de covers A/B 9:16 et 16:9, captions/titres/tags et un pack de production. À utiliser quand Félix écrit /videopower, envoie un lien vidéo et veut tout analyser, créer des thumbnails ou préparer la distribution.
---

# /videopower — MonaSwitch Video Intelligence

## Mission

Transformer une URL vidéo ou un fichier vidéo en **pack de production complet**, sans redemander à Félix les informations déjà présentes dans MonaSwitch.

`/videopower` est un **orchestrateur**. Il ne remplace jamais `/analyze`.

La hiérarchie est verrouillée :

1. `/analyze` = intelligence de marque + EXTRACT/REMIX + conformité.
2. `/videopower` = ingestion vidéo + screenshots + orchestration + packaging multi-format.

## Entrées acceptées

- URL YouTube / Shorts / youtu.be
- URL Instagram Reel / vidéo publique
- URL TikTok publique
- URL Facebook vidéo / Reel accessible
- fichier vidéo local MP4/MOV/WebM
- dossier contenant plusieurs vidéos

## Déclencheurs

Activer cette skill lorsque Félix écrit notamment :

- `/videopower <URL>`
- `analyse ce lien vidéo et fais tout`
- `récupère les screens et fais les covers`
- `fais-moi le MD + thumbnails + captions`
- `CloneViral cette vidéo puis fais les covers`

## Règles absolues

1. **Lire `/analyze` avant toute production.**
   - Local Claude Code : `~/.claude/skills/analyze/SKILL.md`
   - Si absent : ne pas inventer la charte ; signaler que la dépendance `/analyze` manque.
2. Utiliser le routeur de `/analyze` pour détecter la marque/projet.
3. Lire le `PROJECT_CONTEXT.md`, `CLAUDE.md`, brand kit et assets du projet résolu.
4. **Vrais logos uniquement.** Ne jamais demander à un générateur d'image de réécrire un logo ou un mot-symbole officiel.
5. CasseAutoVHU : écrire **« pièces de réemploi »**, jamais « pièces d'occasion ».
6. Une possibilité commerciale ne devient jamais une promesse garantie.
7. Si CloneViral est disponible : l'utiliser comme couche d'analyse supplémentaire et conserver sa sortie. S'il est indisponible : continuer avec le framework `/analyze`, sans bloquer.
8. Pour les contenus privés/protégés : utiliser uniquement un accès/cookie légitime de l'utilisateur. Ne jamais contourner une restriction d'accès.
9. Ne jamais publier automatiquement. Production ≠ publication.

## Quick start

Pour une URL :

```bash
python scripts/videopower_ingest.py "URL" --output "OUTPUT_DIR"
```

Pour un fichier local :

```bash
python scripts/videopower_ingest.py "C:/path/video.mp4" --output "OUTPUT_DIR"
```

Puis exécuter le workflow décrit dans `reference/WORKFLOW.md`.

## Pipeline obligatoire

### 0. ROUTE BRAND

Avant le téléchargement :

- lire `/analyze` ;
- résoudre la marque à partir du contexte, du domaine, du compte social, du brief ou du projet courant ;
- charger charte, logos, CTA, règles légales ;
- écrire le résultat dans `brand_context.md`.

Si plusieurs marques sont possibles : utiliser le projet courant comme priorité. Ne poser une question que si l'ambiguïté change réellement le livrable.

### 1. INGEST

Exécuter `scripts/videopower_ingest.py`.

Sorties déterministes attendues :

- `source/` vidéo locale ;
- `metadata/metadata.json` ;
- `screens/even/` ;
- `screens/scenes/` ;
- `screens/contact-sheet.jpg` ;
- `audio/audio.wav` si disponible ;
- `manifest.json`.

### 2. ANALYZE

Appliquer la logique `/analyze` en mode adapté, par défaut **REFERENCE REMIX** / audit de force :

- `/HOOK`
- `/STRUCTURE`
- `/RETENTION`
- `/EMOTION`
- `/MARKETING`
- `/VIRAL`
- `/COMPLIANCE`
- `/ASSETS`

Si CloneViral est disponible, comparer ses conclusions à celles de `/analyze` : garder les convergences et signaler les divergences utiles.

### 3. SCREEN RANKING

Classer les frames :

- BEST FACE
- BEST CAR / PRODUCT
- BEST ACTION
- BEST CONTRAST
- BEST CURIOSITY
- BEST PROOF
- BEST CTA

Donner une note /10 pour potentiel thumbnail et expliquer en une phrase.

### 4. THUMBNAIL STRATEGY

Ne jamais résumer toute la vidéo sur la miniature.

Créer au minimum :

- **Vertical A — Curiosity** 1080x1920
- **Vertical B — Benefit/Problem** 1080x1920

Si YouTube, ou si Félix demande paysage :

- **16:9 A — Curiosity** 1920x1080
- **16:9 B — Benefit/Problem** 1920x1080

Règles :

- 1 idée ;
- 1 émotion ;
- 1 sujet visuel dominant ;
- 2 à 6 mots idéalement ;
- lisible sur téléphone ;
- visage/objet très grand ;
- contraste fort ;
- pas de collage cheap ;
- générer une **nouvelle scène** quand cela augmente le clic ;
- poser ensuite les vrais logos en overlay déterministe.

### 5. DISTRIBUTION PACK

Produire :

- titre YouTube A/B/C ;
- caption Instagram ;
- caption TikTok ;
- caption Facebook ;
- description YouTube ;
- hashtags par plateforme ;
- tags YouTube ;
- premier commentaire épinglé ;
- localisation recommandée si pertinente ;
- CTA ;
- nom de fichier SEO utile.

### 6. WRITE ANALYSE.md

Créer un seul fichier maître dans le dossier de sortie avec :

- identité source ;
- brand context ;
- analyse timecodée ;
- hooks ;
- ranking screenshots ;
- recommandations montage ;
- marketing ;
- viral ;
- conformité ;
- briefs thumbnails A/B ;
- captions/distribution ;
- QA ;
- next actions.

Voir `reference/OUTPUTS.md`.

### 7. QA FINAL

Bloquer le livrable si :

- logo faux/déformé ;
- nom de marque mal orthographié ;
- mauvais projet ;
- CTA non vérifié ;
- promesse non prouvée ;
- « pièces d'occasion » pour CasseAutoVHU ;
- texte illisible en mobile ;
- miniature hors sujet ;
- dimensions incorrectes ;
- capture inventée présentée comme réelle.

## Dossier de sortie recommandé

Dans le projet courant :

```text
05_PRODUCTION/videopower/YYYY-MM-DD_slug/
├── source/
├── metadata/
├── screens/
│   ├── even/
│   ├── scenes/
│   └── contact-sheet.jpg
├── audio/
├── thumbnails/
│   ├── vertical-A.png
│   ├── vertical-B.png
│   ├── youtube-A.png
│   └── youtube-B.png
├── prompts/
├── captions/
├── brand_context.md
├── manifest.json
└── ANALYSE.md
```

## Comportement attendu avec une commande simple

Quand Félix écrit seulement :

```text
/videopower https://...
```

ne pas lui demander de choisir 15 options.

Par défaut :

1. brand routing automatique via `/analyze` ;
2. ingestion ;
3. screenshots ;
4. analyse complète ;
5. MD ;
6. 2 concepts 9:16 ;
7. si source YouTube, 2 concepts 16:9 aussi ;
8. captions multi-RS ;
9. QA ;
10. présenter les fichiers et le meilleur choix recommandé.

## Références

- Workflow détaillé : `reference/WORKFLOW.md`
- Contrat de sortie : `reference/OUTPUTS.md`
- Ingestion déterministe : `scripts/videopower_ingest.py`
