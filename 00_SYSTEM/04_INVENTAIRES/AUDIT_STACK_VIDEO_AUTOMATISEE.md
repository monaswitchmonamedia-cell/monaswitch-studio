# AUDIT STACK VIDÉO AUTOMATISÉE

**Date** : 2026-04-28
**Objectif** : Avant de produire les 3 vidéos pilote Monamedia à la main, vérifier ce qui peut être lancé/automatisé depuis Claude Code.

---

## RÉPONSE COURTE

| Outil | Statut réel | Automatisable depuis Claude Code ? |
|---|---|---|
| **HeyGen API** | ❌ Pas de clé en env, pas de MCP installé. Skill `heygen` présent (déprécié) attend `HEYGEN_API_KEY` + tools `mcp__heygen__*` indispo. | **Non aujourd'hui** — clé API à activer. |
| **Remotion 4.0.434** | ✅ Installé global (`@remotion/cli@4.0.434` + `remotion@4.0.434`). Skills `remotion`, `remotion-video`, `remotion-best-practices` présents. | **Oui** — full CLI, render programmable. |
| **Hyperframes** (NEW 2026-04-28) | ✅ 6 skills installés : `hyperframes`, `hyperframes-cli`, `hyperframes-registry`, `gsap`, `remotion-to-hyperframes`, `website-to-hyperframes`. | **Oui** — vidéo open-source HTML/CSS, alternative Remotion. |
| **ffmpeg** | ✅ Confirmé OK (rapport réparation 2026-04-28). | **Oui** — split, merge, sous-titres, ratios. |
| **NotebookLM** | ✅ Skill `notebooklm-skill` complet (Python, browser automation, auth persistante). | **Oui** — Q&A documentaire, mais pas vidéo. |
| **ElevenLabs** | ❌ Pas de skill, pas de clé en env, accès web seul confirmé. | **Non depuis Claude Code** sans clé. |
| **Nano Banana 2 / Pro** | ⚠️ Skills présents (`nano-banana-2`, `nano-banana-prompts`, `nano-banana-pro-prompts-recommend-skill`) avec CLI TS. Génération images via Gemini API. | **Oui si clé Gemini active** — gemini-ai MCP est connecté. |
| **Seedance / Kling 3.0 / Veo / Flow** | ⚠️ Web only (interfaces). | **Non** — manuel. |
| **Screen Studio / Shots / MotionSize.ai** | ⚠️ Apps macOS / web. | **Non** — manuel hors workflow. |
| **CapCut / Premiere CLI** | ❌ Pas de CLI officielle utilisable. | **Non**. |
| **HeyGen Frames** | ❌ Pas de skill `heygen-frames`, pas de mention dans plugins. | Inexistant côté tooling. |

---

## 1. ✅ AUTOMATISABLE DIRECT depuis Claude Code

### Hyperframes (NEW — alternative open-source HTML/CSS)
- 6 skills installés le 2026-04-28 : `hyperframes` (composer), `hyperframes-cli` (rendering), `hyperframes-registry` (discovery), `gsap` (animations), `remotion-to-hyperframes` (conversion), `website-to-hyperframes` (capture site → vidéo).
- Capacités : composer des vidéos en HTML/CSS animées avec GSAP, render via CLI, exporter en MP4 multi-ratios.
- Avantage : pas besoin de TSX comme Remotion. Workflow web-friendly.
- Test : `~/.claude/skills/hyperframes/SKILL.md`.

### Remotion 4.0.434 (full programmation)
- CLI globale fonctionnelle (`npx remotion --version` → `@remotion/cli 4.0.434`).
- 3 skills disponibles : `remotion`, `remotion-video` (slash `/remotion-video`), `remotion-best-practices`.
- Capacités :
  - Rendu programmatique 9:16 / 1:1 / 16:9 en 1 appel.
  - Composants TSX réutilisables (sous-titres animés, transitions, B-roll).
  - Composition multi-source (avatar HeyGen prérendu + B-roll + texte animé).
- **Manque** : pas de projet Remotion bootstrapped dans `06-monamedia/05_PRODUCTION/remotion/` (dossier vide). À initialiser avec `npm create video@latest`.

### ffmpeg (déjà OK)
- Split / merge / extract frames / burn-in subs / convert ratios.
- Workflow type :
  ```bash
  ffmpeg -i input.mp4 -vf "crop=ih*9/16:ih,scale=1080:1920" output_9x16.mp4
  ffmpeg -i input.mp4 -vf subtitles=sub.srt -c:a copy output_subs.mp4
  ```

### Nano Banana 2 (génération images Gemini)
- Skill `nano-banana-2/` avec `src/cli.ts` + `package.json` + `bun.lock`.
- Dépend du MCP `gemini-ai` (✓ connecté) ou clé Gemini en env.
- **Vérification à faire** : présence de `GEMINI_API_KEY` ou `GOOGLE_API_KEY` (à confirmer côté env).

### NotebookLM (recherche documentaire, pas vidéo)
- Skill complet avec scripts Python + auth persistante.
- Utile pour interroger MOOD_EXTRACT / brand kit, **pas pour produire vidéo**.

---

## 2. ⚠️ SEMI-AUTOMATIQUE (Claude Code prépare, Felix exécute)

### HeyGen (sans API)
- Skill présent (déprécié, redirige vers `create-video` / `avatar-video` qui ne sont pas installés non plus).
- Sans clé `HEYGEN_API_KEY` ni MCP `mcp__heygen__*`, **pas d'appel direct possible**.
- Workflow semi-auto possible :
  - **Claude Code** : génère scripts optimisés (`prompt-optimizer.md` du skill), sélectionne avatar/voix, prépare CSV de batch, écrit fichiers `.txt` prêt à copier-coller dans HeyGen.
  - **Felix** : ouvre HeyGen web, colle script, lance render, télécharge MP4.
- Activation possible : ajouter `HEYGEN_API_KEY` dans `setx` env Windows (cf. `INSTALLATION_PRIORITIES.md`) → débloque appels HTTP directs (X-Api-Key header).

### ElevenLabs
- Pas de skill, pas de clé.
- Semi-auto : Claude Code prépare scripts + paramètres voix (Nicolas FR + speed/pitch), Felix copie dans interface ElevenLabs, télécharge MP3, dépose dans `04_ASSETS/voix_off/`.

### Veo / Seedance / Kling / Flow
- Web only.
- Semi-auto : Claude Code génère prompts boostés `cinema-director`, Felix les colle dans l'interface, télécharge MP4, dépose dans `04_ASSETS/videos_brutes/`.

### Stack Abdé Chan (Sites 10K€)
| Outil | Statut | Mode |
|---|---|---|
| Nano Banana 2 / Pro | ✅ Skill + CLI TS | Auto via Gemini API |
| Seedance 2.0 | Web only | Manuel (compte web) |
| Kling 3.0 | Web only | Manuel |
| Screen Studio | App macOS | ❌ Manuel (machine alain est Windows) |
| Shots | Web/app | Manuel |
| MotionSize.ai | Web | Manuel |

---

## 3. ❌ MANUEL UNIQUEMENT

- **HeyGen interface web** (tant que pas de clé API)
- **Screen Studio** (macOS only, machine Windows ici)
- **CapCut / Premiere** (pas de CLI)
- **Higgsfield** (MCP cassé — clé Composio à régénérer)
- **HuggingFace** (idem MCP cassé)

---

## 4. 🎯 WORKFLOW OPTIMAL — 3 vidéos pilote Monamedia (J2, J3, J5)

### Décision : **HYBRIDE SEMI-AUTO**

Sans clé HeyGen API en env, on ne peut pas batcher les 3 vidéos en CLI pure. **Mais on peut diviser le travail proprement** :

#### Étape 1 — Claude Code (automatique, ~15 min)
- Lit les 3 packs V2 (J2, J3, J5) dans `03_STRATEGIE/PACKS_V2/`
- Génère pour chaque pack :
  1. `script_heygen.txt` (script optimisé via guide `prompt-optimizer.md`)
  2. `voiceover_elevenlabs.txt` (script formaté ElevenLabs avec pauses)
  3. `metadata.json` (avatar_id, voice_id, dimensions cibles, durée)
  4. `prompts_broll.md` (prompts Flow/Seedance/Nano Banana 2 pour B-roll)
- Initialise un projet Remotion vide dans `05_PRODUCTION/remotion/` avec composition pour les 3 ratios.

#### Étape 2 — Felix (manuel, ~45 min × 3 vidéos)
- Pour chaque pack :
  1. HeyGen web → colle script → render → télécharge MP4 9:16
  2. (option) ElevenLabs → voix FR → MP3 → dépose `04_ASSETS/voix_off/`
  3. Génère B-roll via Flow/Nano Banana 2/Seedance avec prompts préparés

#### Étape 3 — Claude Code (automatique, ~15 min)
- Compose chaque vidéo dans Remotion :
  - Avatar HeyGen + B-roll généré + sous-titres auto (ffmpeg + Whisper si dispo, sinon manuel)
- Render 3 ratios : 9:16, 1:1, 16:9
- Output dans `06_EXPORTS/<ratio>/J<N>-<slug>.mp4`

**Temps total estimé** : 30 min (Claude Code) + 2h15 (Felix manuel HeyGen) = ~2h45 pour 3 vidéos × 3 ratios = **9 livrables**.

### Si activation HeyGen API plus tard
- **Étape 2 Felix devient automatique** → Claude Code appelle `POST /v1/video_agent/generate` puis poll `GET /v2/videos/<id>`.
- **Temps total chuterait à ~45 min total** (90 % gain).

---

## 5. 📋 PLAN PRODUCTION — 7 packs Monamedia

| Jour | Format | Outils auto | Outils manuels | Auto % |
|---|---|---|---|---|
| J1 (A — manifesto) | Remotion + ffmpeg | HeyGen web (avatar parlant) | 60 % |
| J2 (B — carrousel) | Nano Banana 2 + Remotion (slides anim) | — | 90 % |
| J3 (C — talking head) | Remotion (subs + ratios) | HeyGen web | 50 % |
| J4 (A — manifesto) | Remotion + ffmpeg | HeyGen web | 60 % |
| J5 (B — carrousel) | Nano Banana 2 + Remotion | — | 90 % |
| J6 (C — talking head) | Remotion + ffmpeg | HeyGen web | 50 % |
| J7 (D — UGC) | Remotion (montage) | Tournage iPhone Felix | 30 % |

**Auto moyenne** : ~60 %. Passe à **>90 %** si HEYGEN_API_KEY active.

---

## RECOMMANDATION

### Option A — **HYBRIDE (recommandée maintenant)**
- Démarrer la production **maintenant** sur les 3 vidéos pilote en mode hybride (Claude Code prépare scripts + Remotion compose, Felix fait HeyGen web).
- Avantage : pas d'attente, on apprend la chaîne.
- Inconvénient : 2h45 par batch de 3.

### Option B — **TOUT AUTOMATISER avant de lancer**
- Activer `HEYGEN_API_KEY` (création setx Windows + test API).
- Activer `ELEVENLABS_API_KEY` si besoin voix premium.
- Bootstrap projet Remotion avec composants HeyGenPresenter.
- Avantage : 3 vidéos en 45 min après activation.
- Inconvénient : 1–2h de setup avant 1ère vidéo.

**→ Reco** : Option A pour les 3 pilotes (apprendre la chaîne réelle, voir les frictions), puis Option B en parallèle pendant que J2 tourne, pour les packs suivants.

---

## COMMANDES À LANCER (si Option A validée)

```bash
# 1. Initialiser le projet Remotion dans 06-monamedia
cd "G:/Mon Drive/MonaSwitch_Studio/01_PROJETS/06-monamedia/05_PRODUCTION/remotion"
npm create video@latest -- --template=hello-world monamedia-pilote

# 2. Lancer Claude Code en mode skill remotion-video
# (depuis Claude Code, slash /remotion-video)

# 3. Préparer les 3 scripts HeyGen
# (Claude Code lit packs J2, J3, J5 et génère les .txt)
```

---

## CHANGELOG

| Date | Événement |
|---|---|
| 2026-04-28 | Audit initial — Remotion + ffmpeg + Nano Banana 2 OK ; HeyGen + ElevenLabs en attente d'API key |
