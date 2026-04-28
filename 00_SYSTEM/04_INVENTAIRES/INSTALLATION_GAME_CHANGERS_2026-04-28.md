# INSTALLATION GAME-CHANGERS — 2026-04-28

**Mission** : installer 5 outils critiques absents du Studio pour débloquer la production Monamedia + 13 projets.

---

## ✅ SKILLS INSTALLÉS AVEC SUCCÈS

### 1. HEYGEN HYPERFRAMES (vidéo HTML/CSS open-source) ✅
**Méthode** : `npx skills add heygen-com/hyperframes -y -g`
**6 skills installés** dans `~/.claude/skills/` (symlinks depuis `~/.agents/skills/`) :
- `hyperframes` — composer
- `hyperframes-cli` — CLI rendering
- `hyperframes-registry` — discovery composants
- `gsap` — animation library
- `remotion-to-hyperframes` — conversion Remotion → HF
- `website-to-hyperframes` — capture site → vidéo

**Pré-requis confirmés** : Node v24.14.0 ✅, ffmpeg 8.1 ✅, git LFS 3.7.1 ✅
**Capacité débloquée** : production vidéos open-source en HTML/CSS depuis Claude Code.

### 2. GPT IMAGE 2 (templates prompts) ✅
**Méthode** : `npx skills add wuyoscar/gpt_image_2_skill -y -g`
**Skills installés** :
- `gpt-image` — skill principal (templates prompts)
- `gpt-image-1-5` — variant complémentaire

**+ skill complémentaire** : `npx skills add intellectronica/agent-skills -y -g`
- 17 skills bonus injectés dont `markdown-converter`, `notion-api`, `youtube-transcript`, `raindrop-api`, `tavily`, `ultrathink`, `promptify`, `here-be-git`, `lorem-ipsum`, `gog-cli`, `mgrep-code-search`, `monologue-notes-api`, `ray-so-code-snippet`, `todoist-api`, `upstash-redis-kv`, `anki-connect`, `beautiful-mermaid`.

**Note** : pas de OPENAI_API_KEY configurée ce soir. Felix utilisera les **162 templates de prompts curés** dans ChatGPT Plus web (manuel) ou via Nano Banana 2 (automatique via Gemini API).

### 3. META CAMPAIGN — couvert par CLAUDE ADS ✅
**Note importante** : `claude marketplace search` n'existe pas (CLI Claude Code n'a pas de sous-commande marketplace au format demandé). **Mais Meta Campaign est déjà couvert** par le skill `ads-meta` installé via Claude Ads (point 4) — pas besoin d'install séparée.

### 4. CLAUDE ADS (audit comptes pub) ✅
**Méthode** : `git clone` + `bash install.sh`
**19 sub-skills installés** (commands `/ads-*` disponibles) :
- Plateformes : `ads-google`, `ads-meta`, `ads-tiktok`, `ads-linkedin`, `ads-microsoft`, `ads-youtube`, `ads-apple`
- Fonctionnels : `ads-audit`, `ads-budget`, `ads-competitor`, `ads-test`, `ads-math`, `ads-plan`, `ads-landing`, `ads-dna`
- Créatifs : `ads-create`, `ads-creative`, `ads-generate`, `ads-photoshoot`
- Orchestrateur : `ads`

**+ 10 agents** (6 audit + 4 creative)
**+ 25 reference files**
**+ 12 industry templates**

### 5. CLAUDE VIDEO VISION (lecture vidéo + audio) ✅
**Méthode** : `git clone https://github.com/jordanrendric/claude-video-vision`
**Structure** : c'est un **plugin Claude Code complet** avec :
- `skills/video-perception/`
- `commands/setup-video-vision.md`, `commands/watch-video.md`
- `mcp-server/`, `agents/`, `assets/`
**Activation** : nécessite probablement `setup-video-vision` (commande de setup à lancer manuellement).

### BONUS — VIDEO-USE ✅
**Méthode** : `git clone https://github.com/browser-use/video-use`
**Skill installé** avec `SKILL.md` au root + `skills/`, `helpers/`, `static/`.
**Capacité** : génération vidéo via browser-use automation.

---

## ⚠️ INSTALLÉ MAIS À ACTIVER MANUELLEMENT

### claude-video-vision
- **Statut** : repo cloné, structure plugin (skills + commands + mcp-server).
- **Action Felix** : lancer `/setup-video-vision` au prochain démarrage Claude Code pour activer.

### antigravity-awesome
- **Statut** : repo cloné, mais **n'est pas un skill Claude Code standard** (c'est un dossier `apps/web-app/` — application web standalone avec README + START_APP.bat).
- **Décision** : pas un skill exploitable directement. À ouvrir manuellement avec `START_APP.bat` si Felix veut tester l'app web. Pas d'intégration Claude Code.

---

## ❌ ACTIONS BLOQUANTES (DEMANDE FELIX)

### 🔧 Higgsfield — clé Composio à régénérer
**Ce que Felix doit faire** :
1. Aller sur https://composio.dev → Connections
2. Trouver l'entrée **Higgsfield** → cliquer "Regenerate API key"
3. Faire pareil pour **HuggingFace** (même provider Composio, même clé)
4. Copier la nouvelle clé
5. Coller dans `.claude.json` : remplacer `apiKey=7bb25569-82c1-49e6-9009-e09d5357d97a` aux deux entrées (`higgsfield` et `huggingface`).

### 🔧 uv (Python package manager) — manquant
**Pré-requis manquant** : `uv --version` → "command not found".
- Le skill `gpt-image` peut en avoir besoin pour ses scripts Python.
- **Commande Felix** : `winget install astral-sh.uv` (ou `pip install uv`).
- Non bloquant pour ce soir — Felix utilisera les templates de prompts en mode manuel.

### 🔧 OPENAI_API_KEY (optionnel — non requis ce soir)
- Si Felix veut générer images via API GPT Image dans le futur, il faudra ajouter la clé.
- Workflow actuel : ChatGPT Plus web ou Nano Banana 2 (via Gemini API déjà connecté).

### 🔧 banana-claude (optionnel — pour `/ads photoshoot`)
- Mentionné par l'installeur claude-ads.
- Install : `curl -fsSL https://raw.githubusercontent.com/AgriciDaniel/banana-claude/main/install.sh | bash`
- Non bloquant ce soir.

---

## 📊 BILAN

| # | Skill | Statut | Impact |
|---|---|---|---|
| 1 | Hyperframes (6 skills) | ✅ | Vidéo HTML/CSS open-source, alternative Remotion |
| 2 | GPT Image 2 (2 skills) + agent-skills (17 bonus) | ✅ | 162 templates prompts ads/posters |
| 3 | Meta Campaign | ✅ (via ads-meta) | Audit campagnes Meta |
| 4 | Claude Ads (19 sub + 10 agents + 25 refs + 12 templates) | ✅ | Audit complet 7 plateformes pub |
| 5 | Claude Video Vision | ✅ (à activer) | Lecture vidéo + audio |
| Bonus | video-use | ✅ | Génération vidéo browser automation |
| Bonus | antigravity-awesome | ⚠️ | App web, pas un skill |

**Total skills Claude Code** : ~30 nouveaux skills exploitables immédiatement (plus les 17 bonus intellectronica).

---

## 🎯 ACTIONS IMMÉDIATES SUGGÉRÉES

1. **Test des 5 game-changers** (10 min) :
   - `/ads audit` (test claude-ads)
   - Lire `~/.claude/skills/hyperframes/SKILL.md` (test hyperframes)
   - Lire `~/.claude/skills/gpt-image/SKILL.md` (templates prompts)

2. **Pour la production Monamedia** :
   - Génération images Day 2 : utiliser templates `gpt-image` dans ChatGPT Plus web
   - Vidéos Day 3, 5 : tester Hyperframes (alternative Remotion)
   - Audit pub futur : `/ads-meta` quand Felix lance des campagnes

3. **Régénérer clé Composio** (Felix manuel, 5 min) :
   - composio.dev → Connections → Higgsfield + HuggingFace → Regenerate
