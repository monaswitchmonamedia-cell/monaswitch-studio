# HANDOFF — MonaMedia Production

> Document de passation entre les 3 IA et l'humain. À lire avant toute action.

**Projet** : 06-monamedia
**Client** : MonaMedia (Monaco)
**Drive racine** : `G:\Mon Drive\MonaSwitch_Studio\01_PROJETS\06-monamedia\`
**Créé le** : 2026-04-27
**Statut** : 🟡 PRÉ-CONFIG — 0/7 contenus produits — INBOX vide

---

## 1. CONTEXTE

**MonaMedia** est un projet client basé à **Monaco**.
Activité : organisation de **séminaires d'entreprise** et de **2 salons annuels**.
Référents humains côté client : **Anna** et **Louis**.
Site de référence : monamedia.mc

**MonaMedia ≠ MonaSwitch.**
- MonaSwitch = agence principale (notre studio)
- MonaMedia = projet/client à part entière, dossier dédié, aucune fusion de fichiers

---

## 2. RÈGLES STRICTES

0. **RÈGLE OPS 0 — ASSETS + SKILLS FIRST** (référence : [`00_SYSTEM/04_INVENTAIRES/REGLE_OPS_ASSETS_SKILLS_FIRST.md`](../../00_SYSTEM/04_INVENTAIRES/REGLE_OPS_ASSETS_SKILLS_FIRST.md)) — Avant TOUTE production de fichier, Claude Code doit (1) scanner les assets MonaMedia, (2) lire ce qui est utile, (3) choisir les skills/MCPs adaptés, (4) annoncer le bloc `STACK PROPOSÉ` (assets + skills + MCPs + outils + livrable + risques), AVANT de produire. Exception allégée : rédaction <500 tokens, question factuelle, réponse sans production de fichier. Phrase magique de rappel : `"FAUTE SKILLS — reprends depuis la règle OPS Skills/Repos/MCP First"`. Naming des nouveaux fichiers : `pack-J{N}-monamedia-{format}-v{n}.{ext}`.
1. Ne jamais mélanger MonaMedia et MonaSwitch (fichiers, briefs, exports, copies).
2. Aucune production finale tant que les inputs Felix ne sont pas dans `_INBOX_A_TRIER/`.
3. Aucune installation, aucune API connectée, aucun environnement sandbox.
4. Metricool n'est PAS l'outil central de publication (D-005).
5. Aucun mot de passe RS stocké dans le Drive (jamais).
6. **Felix = pilote du projet MonaMedia** (inputs Drive, décisions stratégiques côté studio).
7. **Publication RS de MonaMedia = Anna + Louis** (côté client). Felix gère la publication RS sur 5 autres projets, **pas sur MonaMedia**. Aucun remplacement global Alain → Felix.
8. Ne pas toucher aux chemins techniques de la machine d'Alain (`C:\Users\alain\...`, scripts PowerShell, configs locales).
9. Toute écriture est limitée au dossier `06-monamedia/`. Lecture autorisée sur `00_SYSTEM/`.
10. Aucun overwrite : vérifier l'inexistence d'un fichier avant écriture.

---

## 3. RÔLES DES 3 IA + DRIVE

| Acteur | Rôle | Ce qu'il fait | Ce qu'il ne fait pas |
|---|---|---|---|
| **Claude Code / Claude Desktop** | Atelier d'exécution Drive | Crée/range/édite fichiers, scripts, structure dans `G:\Mon Drive\...` | Stratégie, DA créative, validation finale |
| **ChatGPT 5.5 Pro** | Cerveau stratégique + DA | Briefs, angles, scripts, prompts image/vidéo, SEO/AEO/GEO, ton | Écrire dans le Drive |
| **Claude.ai (web)** | Critique / QA / amélioration | Relecture, contre-arguments, polish, détection incohérences | Production initiale, exécution Drive |
| **Google Drive** | Source de vérité | Stocke tout, sync auto via Drive Desktop | Modifie de lui-même |

### Accès Drive : règle critique

**Claude Code / Claude Desktop est la SEULE IA qui peut lire/écrire directement dans `G:\Mon Drive\...`**.

ChatGPT 5.5 et Claude.ai (web) **n'ont pas accès au chemin local**. Pour les synchroniser, **Felix doit COPIER-COLLER** le contenu du HANDOFF (ou de tout autre fichier nécessaire) dans leurs conversations respectives.

### Indépendance des 3 IA

**Les 3 IA (Claude Code, ChatGPT 5.5, Claude.ai) sont indépendantes. Elles ne communiquent pas entre elles directement.** Felix fait le pont en copiant les outputs de l'une vers l'autre quand nécessaire.

**Boucle standard** :
1. ChatGPT 5.5 conçoit (script, prompt, angle)
2. Felix copie l'output → Claude Code l'écrit dans le Drive
3. Felix copie le résultat Drive → Claude.ai le critique
4. Felix copie la critique → Claude Code corrige
5. Anna/Louis valident côté client

---

## 4. STRUCTURE DOSSIERS (cible)

```
06-monamedia/
├── HANDOFF_MONAMEDIA_PRODUCTION.md  ← CE FICHIER
├── PROJECT_CONTEXT.md                ← à compléter par Anna/Louis via Felix
├── CLAUDE.md                         ← règles projet
├── _TRACKER.md                       ← suivi vivant
├── TRIAGE_CONTENUS.md                ← registre des inputs triés
├── VIDEO_STACK_STATUS.md             ← état stack vidéo
├── _INBOX_A_TRIER/                   ← zone tampon Felix
├── 01_BRIEF/
├── 02_BRAND_KIT/
├── 03_SOURCES_RAW/
│   └── audios | concurrents | documents | images | videos
├── 04_ASSETS/
│   └── logos | images_source | images_finales | videos_brutes |
│       audio | avatars_heygen | references_visuelles | b-roll |
│       fonts | videos_finales
├── 05_PRODUCTION/
│   └── heygen_presentation | remotion | carrousels | reels_shorts |
│       ugc | cinematic | ads | articles_blog | emails | site
├── 06_EXPORTS/
│   └── 9x16 | 1x1 | 16x9 | pdf | png
├── 07_PUBLIES/
├── 08_PERFORMANCE/
│   └── screenshots | stats
├── 09_PUBLICATION_A_DEFINIR/
│   └── calendrier | captions | briefs_visuels | prompts_images |
│       prompts_videos | checklist_publication | hashtags |
│       outil_final | preuves_publication
└── 10_ARCHIVES/
```

---

## 5. INPUTS FELIX → `_INBOX_A_TRIER/` (5 à 7 max)

À fournir par Felix avant tout démarrage :

1. **`logo_monamedia.svg`** (ou `.png`) — logo officiel
2. **`site_monamedia_capture.png`** — screenshot complet de monamedia.mc
3. **`offre_monamedia.md`** (ou `.pdf`) — note brève des services + ICP
4. **`seminaires_monaco_details.md`** — typologie séminaires, tarifs publics, lieux, audience visée
5. **`salons_2026_details.md`** — fiches des 2 salons annuels (dates, thème, exposants types, public)
6. **`references_visuelles/`** — 5-10 visuels que Anna/Louis aiment (Pinterest, Instagram, sites)
7. **`pitch_audio_60s.mp3`** — Anna ou Louis explique MonaMedia en 60 secondes (input ChatGPT 5.5 pour ton)

→ **Quand les 7 sont là**, Claude Code trie via `TRIAGE_CONTENUS.md` vers `02_BRAND_KIT/`, `03_SOURCES_RAW/`, `04_ASSETS/references_visuelles/`.

---

## 6. MÉTHODE 7 JOURS — premier sprint éditorial

| Jour | Format | Angle | Plateforme cible |
|---|---|---|---|
| **J1** | HeyGen 60s | Présentation MonaMedia | LinkedIn + Instagram Reel |
| **J2** | Carrousel 5-7 slides | Problème (visibilité Monaco) | Instagram + LinkedIn |
| **J3** | HeyGen 45s | Solution MonaMedia | LinkedIn + Reel |
| **J4** | Carrousel | Conseil pratique pour organisateurs | Instagram + LinkedIn |
| **J5** | Carrousel preuve | Témoignage / chiffre / case salon | Instagram + LinkedIn |
| **J6** | Reel/Short 30s | Coulisses / dynamique séminaire | Instagram + TikTok |
| **J7** | HeyGen 30s + CTA | Réservez votre séminaire / salon | LinkedIn + Reel |

**Objectif : préparer 7 contenus d'avance (un stock exploitable). La cadence exacte de publication sera décidée par Anna + Louis après validation des contenus.**

---

## 7. PACK PAR CONTENU (template à dupliquer 7×)

Chaque contenu produit reçoit un fichier `pack-J{n}-{slug}.md` contenant :

```yaml
plateforme: [LinkedIn | Instagram | TikTok | ...]
format: [HeyGen 60s | Carrousel 7 slides | Reel 30s]
hook: [accroche 5 premières secondes / première slide]
texte: [script complet OU contenu slides]
caption: [légende plateforme, humanisée]
hashtags: [5-10, mix Monaco / niche / large]
cta: [action attendue : DM, lien bio, swipe up, RDV]
idee_visuelle: [description courte de la direction visuelle]
prompt_image: [prompt prêt pour Flow / NanoBanana 2 / GPT-Image]
prompt_video: [prompt prêt pour Seedance / Kling / Higgsfield]
brief_heygen: [avatar, voix, décor, durée] (si applicable)
brief_remotion: [composition, ratios, sous-titres, B-roll] (si applicable)
action_manuelle: [étapes que Felix/Anna/Louis doivent faire à la main]
niveau_confiance: [🟢 fort / 🟡 moyen / 🔴 fragile + raison]
infos_manquantes: [liste des trous à combler avant production]
```

---

## 8. PROMPT DE DÉMARRAGE — à coller dans ChatGPT 5.5 / Claude.ai

```
Tu es le cerveau stratégique du projet 06-MonaMedia (client Monaco, séminaires + 2 salons).
Référents humains : Anna et Louis. Pilote studio : Felix.
Source de vérité : Drive G:\Mon Drive\MonaSwitch_Studio\01_PROJETS\06-monamedia\
(je n'y ai pas accès — Felix me copie-colle les fichiers nécessaires).

Lis d'abord le contenu de HANDOFF_MONAMEDIA_PRODUCTION.md, PROJECT_CONTEXT.md
et _TRACKER.md que Felix me transmet.

Ne mélange jamais MonaMedia avec MonaSwitch.
Ne propose aucune installation, aucune API connectée, aucun outil sandbox.
Metricool n'est pas central. La publication RS de MonaMedia est gérée par
Anna + Louis (pas par Felix).

Ta mission : produire le pack complet (selon section 7 du HANDOFF) pour le
contenu du jour demandé, en suivant la méthode 7 jours (section 6).

Retourne un fichier markdown nommé pack-J{n}-{slug}.md, prêt à coller dans
05_PRODUCTION/{format}/.

Si une info manque, liste-la dans infos_manquantes au lieu d'inventer.
```

---

## 9. ÉTAT ACTUEL

- 🟡 **Pré-configuration en cours**
- 0/7 contenus produits
- `_INBOX_A_TRIER/` : vide, en attente Felix
- `PROJECT_CONTEXT.md` : à compléter (audience, ton, identité visuelle)
- Stack vidéo : voir `VIDEO_STACK_STATUS.md`
- Prochaine action humaine : Felix dépose les inputs dans `_INBOX_A_TRIER/`

> **Cette section doit être mise à jour à chaque action significative** (création de contenu, validation, publication, blocage). Maintenir à jour permet à toutes les IA reprenant le projet de connaître l'état réel.
