# TEMPLATE_PROJET_MASTER

> **Capitalisation 06-monamedia** → process réutilisable pour les 12 autres projets MonaSwitch.
> Créé : 2026-04-28 · Version : V1 (post-Monamedia)
> Référence vivante : à enrichir après chaque nouveau projet.

---

## TL;DR

Ce template encode le workflow complet qu'on a bâti sur MonaMedia (de zéro à 7 packs prêts à produire). Il permet de **passer de 8h de setup à 1h30** sur chaque nouveau projet, en réutilisant : structure dossier, prompts validés, séquence de phases, stack d'outils par phase, et règles ops.

---

## 1. STRUCTURE DOSSIER À CRÉER

À répliquer pour chaque nouveau projet sous `01_PROJETS/XX-nom-projet/` :

```
XX-nom-projet/
├── 00_INBOX/                          # Inputs bruts du client/Felix avant tri
├── 01_HANDOFF/                        # HANDOFF + PROJECT_CONTEXT + _TRACKER
│   ├── HANDOFF_<PROJET>.md
│   ├── PROJECT_CONTEXT.md
│   └── _TRACKER.md
├── 02_BRAND_KIT/                      # Bible visuelle + audio + identité
│   ├── MOOD_EXTRACT_<PROJET>.md
│   ├── CHARTE_GRAPHIQUE.md
│   └── identite_audio/
├── 03_STRATEGIE/                      # Packs J1→J7 + plan éditorial
│   ├── PACKS_V1/                      # Drafts ChatGPT 5.5
│   ├── PACKS_V2/                      # Versions Claude Code + skills
│   └── PLAN_EDITORIAL_30J.md
├── 04_ASSETS/
│   ├── avatars_heygen/                # PNG/MP4 avatars HeyGen
│   ├── logos/                         # SVG / PNG transparent HD
│   ├── images_finales/                # Validées, prêtes prod
│   ├── images_source/                 # Brutes / extraites
│   ├── references_visuelles/          # Mockups, screenshots, mood
│   └── videos_brutes/                 # Footage brut, frames extraites
├── 05_PRODUCTION/                     # Production en cours par format
│   ├── manifesto/                     # Format A — manifesto cinematic
│   ├── heygen_presentation/           # Format C — talking head
│   ├── voix_off/                      # Audio brut + masters
│   ├── ugc/                           # Format D — UGC
│   └── autre_format/                  # Format B — carrousel/article/email
└── 06_EXPORTS/                        # Livrables finaux
    ├── 9-16/                          # Reels / TikTok / Stories
    ├── 1-1/                           # Posts feed Insta/LinkedIn
    └── 16-9/                          # YouTube / site / pitch
```

**Commande shell** (Windows / Git Bash) à adapter :

```bash
PROJET="11-consulting-energies"
BASE="G:/Mon Drive/MonaSwitch_Studio/01_PROJETS/$PROJET"
mkdir -p "$BASE"/{00_INBOX,01_HANDOFF,02_BRAND_KIT/identite_audio,03_STRATEGIE/{PACKS_V1,PACKS_V2},04_ASSETS/{avatars_heygen,logos,images_finales,images_source,references_visuelles,videos_brutes},05_PRODUCTION/{manifesto,heygen_presentation,voix_off,ugc,autre_format},06_EXPORTS/{9-16,1-1,16-9}}
```

---

## 2. WORKFLOW EN 8 PHASES

### PHASE 1 — Setup architecture multi-IA *(45 min)*
**Outil** : Claude.ai HQ (browser, conversation longue)
- Rédiger `HANDOFF_<PROJET>.md` (brief client + objectifs + livrables)
- Rédiger `PROJECT_CONTEXT.md` (positionnement, public, décisions stratégiques majeures)
- Initialiser `_TRACKER.md` (copie depuis `06-monamedia/_TRACKER.md`)
- **Sortie attendue** : 3 fichiers dans `01_HANDOFF/`, validés par Felix

### PHASE 2 — Inventaire fichiers projet *(30 min)*
**Outil** : Claude Code + bash
- Scanner `00_INBOX/` → catégoriser (logos / vidéos / mockups / références / docs)
- Détecter pépites (haute valeur) + duplicates (md5sum si besoin)
- Produire `TRIAGE_CONTENUS.md` (liste catégorisée + recommandations)
- Copier les pépites vers `04_ASSETS/` (originals intacts dans 00_INBOX)
- **Sortie** : `TRIAGE_CONTENUS.md` + `04_ASSETS/` peuplé

### PHASE 3 — Mood-extract (Bible visuelle/audio) *(1h)*
**Outil** : Claude Code + ffmpeg + analyse images
- Analyser logos officiels (couleurs dominantes, typo)
- Extraire frames clés des vidéos (`ffmpeg -ss X -vframes 1`)
- Décrire les mockups / UI / références visuelles
- Définir identité audio (V1 HeyGen voix, ton, rythme)
- Documenter les N "pouvoirs" / piliers narratifs du projet
- Lister 4 formats narratifs (A/B/C/D)
- **Sortie** : `02_BRAND_KIT/MOOD_EXTRACT_<PROJET>.md`

### PHASE 4a — 7 packs V1 (ChatGPT brut) *(1h30)*
**Outil** : ChatGPT 5.5 (avec accès Drive activé)
- Stratégie répartition formats : J1=A, J2=B, J3=C, J4=A, J5=B, J6=C, J7=D (ou variante)
- Brief ChatGPT avec MOOD_EXTRACT + objectifs business
- Sortie : 7 fichiers `pack-J{N}-{slug}.md` dans `03_STRATEGIE/PACKS_V1/`
- **Statut** : drafts à challenger, jamais à produire tels quels

### PHASE 4b — 7 packs V2 (Claude Code + skills) *(2h)*
**Outil** : Claude Code + skills locaux
- Skills mobilisés (dans cet ordre) :
  1. `skill-hook-generator` — réécrire les hooks
  2. `skill-script-builder` — structurer scripts vidéo
  3. `cinema-director` — direction artistique image/vidéo
  4. `copywriting` — punch up textes
  5. `marketing-psychology` — vérifier triggers
  6. `enhance-prompt` — durcir les prompts image/vidéo
  7. `humanizer` — anti-écriture-IA finale
  8. `founder-viral-posts` — formats founder LinkedIn
- Conserver V1 dans `PACKS_V1/`, produire V2 dans `PACKS_V2/`
- **Sortie** : 7 packs 🟢 prêts à produire

### PHASE 5 — Génération images *(1h–3h selon volume)*
**Outil** : ChatGPT 5.5 (génération images natives, accès Drive)
- Prompts boostés par `cinema-director` (cadrage, focale, lumière, palette)
- Génération en lot par pack
- Rangement automatique : ChatGPT écrit dans `04_ASSETS/images_finales/<format>/<jour>/`
- Backup : `04_ASSETS/images_source/` (originaux non retouchés)
- **Sortie** : N images par pack, nommées `<jour>-<slug>-<index>.png`

### PHASE 6 — Production vidéos *(2h–6h)*
**Outils** :
- **HeyGen** (interface web) → formats A (manifesto cinematic) et C (talking head)
- **Hyperframes** (NEW) → vidéo HTML/CSS open-source, alternative Remotion pour formats B/D
- **Remotion CLI** ou **CapCut** → formats B (carrousel/social) et D (UGC remix)
- **Flow / Nano Banana 2** → renders cinéma rapides
- **Claude Video Vision** → vérification automatique du livrable (lecture + audio)
- Export systématique en 9-16, 1-1, 16-9 selon le format
- **Sortie** : `06_EXPORTS/<ratio>/<jour>-<slug>.mp4`

### PHASE 7 — Livraison équipe *(30 min)*
**Outils** : Slack/mail + Google Drive
- Message au responsable RS du projet (template ci-dessous)
- Chemin Drive partagé : `06_EXPORTS/`
- Plan publication : ordre + dates + canaux + copy
- Tracker mis à jour avec date de livraison
- **Sortie** : projet en main de l'équipe RS

### PHASE 8 — Capitalisation *(15 min)*
**Outil** : Claude Code
- Noter ce qui a marché / pas marché → ajouter à ce template
- Si nouveau prompt validé → ajouter dans section 3
- Si nouveau skill créé → ajouter à RÈGLE OPS 0
- MAJ `_TRACKER.md` global Studio si besoin

**TOTAL** : ~8h pour le 1er projet, **~1h30 pour les suivants** une fois le template rodé.

---

## 3. PROMPTS CLÉS À RÉUTILISER

### 3.1 Prompt HANDOFF (Claude.ai HQ — Phase 1)
```
Tu es l'assistant stratégique MonaSwitch. Crée un HANDOFF_<PROJET>.md
pour le projet <NOM>. Contenu obligatoire :
1. Mission du projet (1 phrase)
2. Objectifs business (3 max, mesurables)
3. Public cible (description fine, pas démographique générique)
4. Tonalité de marque (3 adjectifs + 3 anti-adjectifs)
5. Livrables attendus (formats + quantités + deadline)
6. Contraintes (légales, brand, techniques)
7. Stakeholders (qui valide quoi)
8. Risques connus
Format : markdown propre, sections claires, pas de blabla.
```

### 3.2 Prompt mood-extract (Claude Code — Phase 3)
```
Analyse les fichiers de 04_ASSETS/ (logos, frames vidéo, mockups,
références) du projet <NOM>. Produis MOOD_EXTRACT_<PROJET>.md avec :
1. Palette couleurs officielle (hex + usage)
2. Typo principale + secondaire
3. Style visuel (3 mots clés + 3 références culturelles)
4. Bible personnage iconique si applicable (silhouette, pouvoirs, voix)
5. Identité audio V1 (voix HeyGen + ton + rythme)
6. 4 formats narratifs (A/B/C/D) avec exemples
Pas d'invention : si une info manque, écrire [MANQUE: ...] et demander.
```

### 3.3 Prompt 7 packs V1 (ChatGPT 5.5 — Phase 4a)
```
Tu as accès au Drive du projet <NOM>. Lis MOOD_EXTRACT et HANDOFF.
Produis 7 packs (J1→J7), un par fichier markdown nommé
pack-J{N}-{slug}.md, dans 03_STRATEGIE/PACKS_V1/.
Chaque pack contient :
- Format (A/B/C/D)
- Hook (3 variantes)
- Script complet (durée cible)
- Visuels nécessaires (description ou prompt image)
- CTA
- Hashtags / SEO
- Plan diffusion (canaux + heure)
Répartition : J1=A, J2=B, J3=C, J4=A, J5=B, J6=C, J7=D.
```

### 3.4 Prompt 7 packs V2 (Claude Code — Phase 4b)
```
Tu as 7 packs V1 dans 03_STRATEGIE/PACKS_V1/. Pour chacun, applique
dans cet ordre les skills suivants : skill-hook-generator,
skill-script-builder, cinema-director, copywriting,
marketing-psychology, enhance-prompt, humanizer.
Si un skill n'existe pas, le créer localement avec le pattern
skill-creator. Sortie : 7 nouveaux fichiers dans PACKS_V2/ avec le
même nommage. Conserver les V1 intacts. Produire un diff résumé
pack par pack en fin de tâche.
```

### 3.5 Prompt génération images V2 (ChatGPT 5.5 — Phase 5)
```
Tu as accès au Drive. Pour chaque pack dans
03_STRATEGIE/PACKS_V2/, génère les images nécessaires en suivant
les prompts boostés par cinema-director. Cadrage, focale, lumière,
palette : extraits de MOOD_EXTRACT_<PROJET>.md.
Range les fichiers dans :
04_ASSETS/images_finales/<format>/<jour>/<slug>-<index>.png
Backup les sources brutes dans 04_ASSETS/images_source/.
Confirme à la fin avec la liste des fichiers créés.
```

### 3.6 Prompt rangement V2 dans Drive (ChatGPT 5.5)
```
Tu as accès au Drive MonaSwitch_Studio. Réorganise tous les outputs
du projet <NOM> selon la structure TEMPLATE_PROJET_MASTER.
Contraintes :
- Ne déplace JAMAIS les originals de 00_INBOX
- Respecte le naming pack-J{N}-{slug}.md
- Versions : -v1, -v2 (jamais -final)
- Confirme avec un tree avant/après
```

---

## 4. STACK D'OUTILS PAR PHASE

| Phase | Outil principal | Outil secondaire | Sortie |
|---|---|---|---|
| 1 — Setup | Claude.ai HQ | — | HANDOFF + CONTEXT + TRACKER |
| 2 — Inventaire | Claude Code + bash | md5sum, ffprobe | TRIAGE_CONTENUS.md |
| 3 — Mood-extract | Claude Code + ffmpeg | analyse images | MOOD_EXTRACT.md |
| 4a — Packs V1 | ChatGPT 5.5 (Drive) | — | 7 packs PACKS_V1/ |
| 4b — Packs V2 | Claude Code + skills | skill-creator | 7 packs PACKS_V2/ |
| 5 — Images | ChatGPT 5.5 (gen images) | nano-banana, FAL | 04_ASSETS/images_finales/ |
| 6 — Vidéos | HeyGen | Remotion CLI, CapCut, Flow | 06_EXPORTS/<ratio>/ |
| 7 — Livraison | Slack/mail | Google Drive | message + plan publi |
| 8 — Capitalisation | Claude Code | — | template MAJ |

---

## 5. CHECKLIST FELIX (étape par étape)

**Avant de démarrer un nouveau projet** :
- [ ] Décider du numéro projet (XX) et du nom kebab-case
- [ ] Créer le dossier via la commande `mkdir -p` (section 1)
- [ ] Déposer tous les inputs bruts dans `00_INBOX/` (rien ne va ailleurs au début)
- [ ] Préparer un brief client de 5 lignes pour Phase 1

**Pendant les phases** :
- [ ] Phase 1 : valider HANDOFF avant Phase 2
- [ ] Phase 2 : ne JAMAIS supprimer les originals de `00_INBOX`
- [ ] Phase 3 : si un asset HD manque (logo SVG/PNG), le réclamer client AVANT Phase 4
- [ ] Phase 4a : challenger les V1, ne pas produire telles quelles
- [ ] Phase 4b : valider chaque pack V2 avant Phase 5
- [ ] Phase 5 : vérifier que ChatGPT a bien accès au Drive avant de lancer
- [ ] Phase 6 : tester un format en 9-16 avant de batcher tous les exports
- [ ] Phase 7 : envoyer le message à l'équipe RS uniquement quand 06_EXPORTS est complet

**Après livraison** :
- [ ] Phase 8 : noter 1 chose qui a marché + 1 chose à améliorer dans ce template
- [ ] MAJ `STUDIO_STATE.md` du Studio si nouveau pattern émergent

---

## 6. RÈGLE OPS 0 — ASSETS + SKILLS FIRST

> **Référence canonique** : [`00_SYSTEM/04_INVENTAIRES/REGLE_OPS_ASSETS_SKILLS_FIRST.md`](../04_INVENTAIRES/REGLE_OPS_ASSETS_SKILLS_FIRST.md)
> **Phrase magique** (Felix → Claude Code) : `"FAUTE SKILLS — reprends depuis la règle OPS Skills/Repos/MCP First"`

**Avant TOUTE production de fichier**, Claude Code doit dans cet ordre :

1. **Identifier le type de tâche** (vidéo / image / site / social / SEO / présentation / ads / email / design / analyse vidéo-audio)
2. **Scanner les assets du projet** (logos, images, vidéos, avatars, mockups, brief, mood-extract, brand kit, packs)
3. **Lire les assets utiles** (analyse visuelle des images, frames vidéo, logo, charte)
4. **Choisir les skills/MCPs adaptés** au type de tâche (cf. table dans le fichier canonique)
5. **Annoncer le bloc `STACK PROPOSÉ`** avec assets / skills / MCPs / outils / livrable / risques — AVANT de produire
6. **Prendre initiative** (proposer les meilleurs assets, jamais renommer/supprimer les originaux bruts sans validation Felix)
7. **Respecter le naming** : `pack-J{N}-{projet}-{format}-{version}.{ext}` (kebab-case, jamais `-final`)

**Exception (règle allégée)** : rédaction `< 500 tokens`, question factuelle, ou réponse sans production de fichier → skip du scan, réponse directe.

**Skills indispensables** existants dans `~/.claude/skills/` à vérifier en début de projet :

**Skills indispensables au workflow projet** :
- `skill-hook-generator`
- `skill-script-builder`
- `cinema-director`
- `enhance-prompt`
- `humanizer`
- `founder-viral-posts`
- `copywriting`
- `marketing-psychology`

**Skills game-changers ajoutés 2026-04-28** :
- `hyperframes` (+ `hyperframes-cli`, `gsap`, `remotion-to-hyperframes`, `website-to-hyperframes`) — vidéo HTML/CSS open-source
- `gpt-image` (+ `gpt-image-1-5`) — 162 templates prompts ads/posters (utilisable manuel via ChatGPT Plus)
- `ads-meta`, `ads-google`, `ads-tiktok`, `ads-linkedin`, `ads-youtube` (suite Claude Ads — 19 skills total) — audit/création campagnes pub
- `claude-video-vision` (à activer via `/setup-video-vision`) — lecture vidéo + audio
- `video-use` — génération vidéo browser automation

Si un skill manque → le créer immédiatement via `skill-creator` avant de produire. Ne jamais "improviser sans skill" : la qualité chute, et la capitalisation Studio est cassée.

**Test rapide** :
```bash
ls ~/.claude/skills/ | grep -E "hook|script|cinema|enhance|humanizer"
```

---

## 7. CONFIGURATION MCPs PAR PROJET

### Pattern injecté dans `.claude.json`

Pour chaque nouveau projet, ajouter une section dans `C:\Users\alain\.claude.json` :

```json
"G:\\Mon Drive\\MonaSwitch_Studio\\01_PROJETS\\XX-nom-projet": {
  "mcpServers": {
    "framer-XX-nom-projet": {
      "type": "http",
      "url": "https://mcp.unframer.co/mcp?id=<ID>&secret=<SECRET>"
    }
  }
}
```

### MCPs spécifiques à activer par projet

| MCP | Quand l'activer |
|---|---|
| `framer-<projet>` | Toujours (1 par projet Framer) |
| `surferseo` | Si SEO/AEO/GEO dans le scope |
| `higgsfield` | Si génération vidéo cinéma demandée |
| `huggingface` | Si modèles ML / training perso |
| `google-drive` | Toujours actif (global) |
| `pencil` | Si livrables UI/UX `.pen` |
| `framer-<projet>` Code Connect | Si site Framer custom |

### Backup avant édition `.claude.json`

```bash
cp "C:\Users\alain\.claude.json" "C:\Users\alain\.claude.json.backup-<projet>-<date>"
```

---

## 8. NAMING CONVENTIONS

| Élément | Format | Exemple |
|---|---|---|
| Dossier projet | `XX-nom-projet` (kebab-case) | `06-monamedia`, `11-consulting-energies` |
| Session Claude Desktop | `XX-nom-projet` | `11-consulting-energies` |
| Session Claude Code (cwd) | identique au dossier projet | `01_PROJETS/11-consulting-energies` |
| Pack stratégie | `pack-J{N}-{slug}.md` | `pack-J3-attention-economy.md` |
| Image finale | `<jour>-<slug>-<index>.png` | `J3-attention-01.png` |
| Vidéo export | `<jour>-<slug>.mp4` (dans `06_EXPORTS/<ratio>/`) | `J3-attention.mp4` |
| Versions | `-v1`, `-v2`, `-v3` | `pack-J3-v2.md` |
| **À éviter absolument** | `-final`, `-OK`, `-DEF`, `-version-2`, `-final-final` | ❌ |

---

## 9. RAPPELS BIBLE PROJET (à adapter par projet)

À remplir dans `02_BRAND_KIT/MOOD_EXTRACT_<PROJET>.md` :

- **Palette officielle** : hex codes (primaire / secondaire / accent / neutre)
- **Tagline officielle** : phrase signature, validée par client
- **Personnage iconique** : si applicable (ex. Attention Man pour Monamedia)
  - Silhouette / costume / props
  - N pouvoirs (3–7)
  - Voix HeyGen V1 (ID + paramètres)
- **Public cible** : persona précis (pas "femmes 25–45 CSP+")
- **Décisions stratégiques majeures** : positionnement, anti-positionnement, do/don't
- **Coquilles connues à corriger** : (ex. "POPLE/PEOPLE" frame 11 sur theFIVE)
- **Chiffres communicables vs confidentiels** : 2 listes claires

---

## CHANGELOG

| Date | Version | Changements | Source |
|---|---|---|---|
| 2026-04-28 | V1 | Création initiale post-Monamedia | 06-monamedia (phases 1→4b validées) |
| 2026-04-28 | V1.1 | Ajout game-changers : Hyperframes (6 skills), GPT Image 2 (templates), Claude Ads (19 sub-skills), Claude Video Vision, video-use. Phase 6 enrichie. | Phase Game-Changers |

**Prochaines mises à jour à prévoir** :
- Après le projet 11 (Consulting Énergies) → ajouter apprentissages B2B
- Après le 1er projet 100% terminé (phases 5→8) → confirmer estimations temps
- Après 3 projets → V2 du template avec patterns émergents
