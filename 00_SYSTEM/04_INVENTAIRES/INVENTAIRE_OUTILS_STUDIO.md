# INVENTAIRE OUTILS STUDIO — MonaSwitch

**Version** : V1
**Date** : 2026-04-27
**Méthode** : audit local en direct (filesystem + npm + CLI) croisé avec `MONASWITCH_ARSENAL_COMPLET.md` (référence) et `INVENTAIRE_ARSENAL_VIVANT.md` (état déclaré).
**Source de vérité** : ce fichier reflète **uniquement ce qui a été observé dans la session courante**.

---

## 🎯 Synthèse chiffrée

| Catégorie | Disponible (réel) | Annoncé arsenal | Écart |
|---|---|---|---|
| Skills (`~/.claude/skills/`) | **1 369** | 1 433 | **−64** |
| Agents personnalisés (`~/.claude/agents/`) | **40** | 40 | ✅ aligné |
| Plugins Claude Code activés | **42** | non chiffré | — |
| MCPs configurés/connectés | **7** | 29 | **−22** |
| Marketplaces de plugins | **5** | non chiffré | — |
| NPM globaux | **15** | 14 | +1 |
| CLI tools fonctionnels | **6/7** | 15+ | **−9 minimum** |
| Scripts Python MonaSwitch | **non auditable depuis cette session** | 140+ | inconnu |

---

## ✅ DISPONIBLES

### 1. Outils CLI fonctionnels

| Outil | Version | Chemin / Note |
|---|---|---|
| `node` | v24.14.0 | dans le PATH |
| `npm` | (avec node) | dans le PATH |
| `claude` (Claude Code) | 2.1.119 | dans le PATH |
| `git` | 2.53.0 windows | dans le PATH |
| `gh` (GitHub CLI) | 2.91.0 | dans le PATH |
| `python` | 3.12.10 | dans le PATH |
| `ffmpeg` | 8.1-essentials | ⚠️ `/c/Users/alain/Downloads/ffmpeg-extracted/...` — **pas dans le PATH système** |
| `npx remotion` | 4.0.434 | global npm |

### 2. Packages NPM globaux installés (15)

| Package | Version | Usage |
|---|---|---|
| `@anthropic-ai/claude-code` | 2.1.119 | CLI principal |
| `@fre4x/gemini` | 1.0.44 | génération Imagen + Veo via Gemini |
| `@googleworkspace/cli` | 0.16.0 | Google Workspace |
| `@remotion/cli` | 4.0.434 | rendu Remotion |
| `canvas` | 3.2.2 | génération images server-side |
| `deno` | 2.7.4 | runtime alternatif |
| `ffmpeg-static` | 5.3.0 | binaire ffmpeg via npm |
| `gdrive-mcp` | 1.0.2 | MCP Google Drive |
| `mcp-google-drive` | 1.6.2 | MCP Google Drive (variante) |
| `playwright` | 1.58.2 | tests browser + scraping |
| `remotion` | 4.0.434 | runtime Remotion |
| `repomix` | 1.12.0 | dump repo pour LLM |
| `uipro-cli` | 2.2.3 | UI Pro CLI |
| `vercel` | 50.31.1 | déploiement Vercel |
| `supabase` | (vide) | ⚠️ entrée présente sans version |

### 3. Plugins Claude Code activés (42)

Marketplaces : `claude-plugins-official`, `superpowers-marketplace`, `anthropic-agent-skills`, `cli-anything`, plus divers individuels.

#### Officiels (claude-plugins-official) — 32
`skill-creator` · `frontend-design` · `context7` · `slack` · `Notion` · `figma` · `stripe` · `github` · `firecrawl` · `playwright` · `linear` · `asana` · `claude-md-management` · `ralph-loop` · `hookify` · `security-guidance` · `vercel` · `supabase` · `greptile` · `firebase` · `sentry` · `posthog` · `coderabbit` · `pr-review-toolkit` · `atlassian` · `plugin-dev` · `claude-code-setup` · `agent-sdk-dev` · `feature-dev` · `code-review` · `learning-output-style` · `playground` · `serena` · `qodo-skills` · `commit-commands` · `superpowers`

#### Superpowers Marketplace — 4
`superpowers-lab` · `episodic-memory` · `double-shot-latte` · `claude-session-driver`

#### Autres
`claude-api@anthropic-agent-skills` · `cli-anything@cli-anything`

### 4. Agents personnalisés (40)

#### Agents génériques (24)
`agent-installer` · `agent-organizer` · `ai-engineer` · `api-designer` · `business-analyst` · `code-reviewer` · `content-marketer` · `context-manager` · `data-analyst` · `frontend-developer` · `fullstack-developer` · `mcp-developer` · `product-manager` · `research-analyst` · `security-auditor` · `slack-expert`

#### Agents GSD (10)
`gsd-codebase-mapper` · `gsd-debugger` · `gsd-executor` · `gsd-integration-checker` · `gsd-nyquist-auditor` · `gsd-phase-researcher` · `gsd-plan-checker` · `gsd-planner` · `gsd-project-researcher` · `gsd-research-synthesizer` · `gsd-roadmapper` · `gsd-verifier`

#### Agents MonaSwitch propriétaires (6) ⭐
`monaswitch-b2b-prospector` · `monaswitch-content-factory` · `monaswitch-orchestrator` · `monaswitch-seo-optimizer` · `monaswitch-slack-reporter` · `monaswitch-wp-publisher`

#### Agents SEO (6)
`seo-content` · `seo-performance` · `seo-schema` · `seo-sitemap` · `seo-technical` · `seo-visual`

### 5. Skills disponibles (catégorisés)

> 1 369 skills présents dans `~/.claude/skills/`. Voici une catégorisation des plus pertinents pour les 13 projets MonaSwitch.

#### 🔍 SEO / AEO / GEO (~25)
`seo` · `seo-audit` · `seo-fundamentals` · `seo-content-writer` · `seo-content-planner` · `seo-content-refresher` · `seo-content-auditor` · `seo-keyword-strategist` · `seo-meta-optimizer` · `seo-structure-architect` · `seo-snippet-hunter` · `seo-authority-builder` · `seo-cannibalization-detector` · `seo-forensic-incident-response` · `geo-fundamentals` · `ai-seo` · `schema-markup` · `programmatic-seo` · `site-architecture` · `local-legal-seo-audit`

#### 🎬 Vidéo & Image (~25)
`cinematographer-ai` · `remotion` · `remotion-best-practices` · `remotion-video` · `fal-generate` · `fal-image-edit` · `fal-upscale` · `fal-audio` · `fal-workflow` · `fal-platform` · `ai-studio-image` · `image-studio` · `imagen` · `canvas-design` · `magic-animator` · `videodb` · `videodb-skills` · `screenshots` · `unsplash-integration` · `algorithmic-art` · `ai-video-gen` · `avatar-video` · `faceswap` · `text-to-speech` · `audio-transcriber`

#### 📱 Social / Contenu (~20)
`social-content` · `social-orchestrator` · `content-creator` · `content-marketer` · `content-strategy` · `copywriting` · `humanizer` · `avoid-ai-writing` · `marketing-psychology` · `marketing-skill` · `ad-creative` · `paid-ads` · `paid-ad-copy-adapter` · `paid-social-creative-brief` · `email-sequence` · `email-marketing-bible` · `cold-email` · `instagram-automation` · `tiktok-automation` · `linkedin-automation`

#### 🎨 Design / UI (~20)
`frontend-design` · `web-design-guidelines` · `shadcn-ui` · `tailwind-design-system` · `tailwind-patterns` · `design-spells` · `scroll-experience` · `3d-web-experience` · `threejs-skills` · `animejs-animation` · `magic-ui-generator` · `theme-factory` · `ui-skills` · `ui-ux-designer` · `ui-ux-pro-max` · `mobile-design` · `radix-ui-design-system` · `iconsax-library` · `baseline-ui` · `brand-guidelines`

#### ⚙️ Automation / Scraping
`firecrawl` · `firecrawl-scrape` · `firecrawl-crawl` · `firecrawl-search` · `firecrawl-map` · `firecrawl-browser` · `apify-*` (12 skills Apify) · `make-automation` · `n8n-*` (7 skills n8n) · `zapier-make-patterns` · `make-automation`

#### 🌐 Plateformes intégrations
`wordpress` · `wordpress-plugin-development` · `wordpress-theme-development` · `wordpress-woocommerce-development` · `shopify-development` · `shopify-apps` · `shopify-automation` · `webflow-automation` · `linkedin-cli` · `youtube-automation` · `instagram-automation` · `gmail-automation` · `slack-automation` · `notion-automation`

#### 🔐 Sécurité / Audit
`security-audit` · `security-auditor` · `security-review` · `security-skill-creator` · `pentest-checklist` · `pentest-commands` · `wordpress-penetration-testing` · `web-security-testing`

#### 🤖 IA / Agents / RAG
`ai-engineer` · `ai-agents-architect` · `ai-agent-development` · `agent-orchestrator` · `agent-tool-builder` · `agent-memory` · `agent-memory-mcp` · `rag-engineer` · `rag-implementation` · `langfuse` · `langgraph` · `langchain-architecture` · `vector-database-engineer`

> Liste complète : 1 369 skills. Le filesystem est exploitable directement via `ls ~/.claude/skills/`.

### 6. MCPs configurés (7 selon STUDIO_STATE)

| MCP | Source | Statut session |
|---|---|---|
| `surferseo` | `~/.claude/mcp-servers/surferseo/` | ✅ présent localement |
| `pencil` | autorisé dans `settings.json` (`mcp__pencil`) | ✅ tools disponibles |
| `gemini-ai` | declared STUDIO_STATE | ✅ tools deferred (`mcp__gemini-ai__*`) |
| `google-drive` | declared STUDIO_STATE | ✅ tools deferred |
| `slack` | plugin Claude | ✅ tools disponibles |
| `stitch` | declared STUDIO_STATE | ✅ tools deferred |
| `shopify-levinenbouche` | declared STUDIO_STATE | ✅ tools deferred (projet 05) |

### 7. Marketplaces actives (5)

`claude-plugins-official` (anthropics) · `anthropic-agent-skills` · `superpowers-marketplace` (obra) · `cli-anything` (HKUDS) · plus marketplaces locales internes plugins.

### 8. Hooks actifs (3)

- `gsd-check-update.js` (SessionStart)
- `gsd-context-monitor.js` (PostToolUse)
- `gsd-statusline.js` (statusLine)

### 9. Vault MonaSwitch local

`/c/Users/alain/.claude/monaswitch-vault/` contient : `_inbox`, `_templates`, `agents`, `clients`, `projets`, `projets-actifs`, `ressources`, `reunions`, `HOME.md`. **Disponible mais pas exploité dans cette session.**

### 10. Outils externes payés (déclarés actifs — non testables depuis Claude Code)

HeyGen Enterprise · ElevenLabs · Higgsfield · CreaShorts · Clone Viral · Flow / Nano Banana 2 · Abacus · Google Ultra · SEMrush · SurferSEO · Claude Max · ChatGPT 5.5 Pro.

---

## ❌ MANQUANTS (annoncés arsenal mais introuvables / non vérifiés)

### Critiques (bloquent ou ralentissent la production)

| Manquant | Impact | Action proposée |
|---|---|---|
| **`ffmpeg` dans le PATH système** | Remotion render local + scripts vidéo demandent `ffmpeg` accessible globalement | Ajouter `C:\Users\alain\Downloads\ffmpeg-extracted\ffmpeg-8.1-essentials_build\bin` au PATH Windows |
| **`docker`** | Pas installé. Empêche tout pipeline conteneurisé (Supabase local, Playwright self-hosted, etc.) | Décision : besoin réel ou pas pour les 13 projets ? |
| **CLI `supabase`** | Entrée npm présente mais sans version → installation cassée | `npm i -g supabase` à refaire |
| **22 MCPs annoncés mais non visibles** | Arsenal annonce 29 MCPs ; 7 confirmés dans la session | Lister précisément les MCPs manquants côté `claude mcp list` (à faire en session dédiée) |

### Probables (annoncés mais non vérifiables depuis cette session)

| Manquant | Source de l'annonce |
|---|---|
| Higgsfield MCP (Composio SSE) | arsenal — non listé dans STUDIO_STATE 7 MCPs |
| FAL AI MCP | arsenal — non listé |
| SEMrush MCP/API actif | arsenal — non listé (seul SEMrush déclaré "clé existe") |
| ElevenLabs MCP | arsenal — non listé |
| HeyGen MCP | STUDIO_STATE déclare "via MCP" mais non visible dans les tools de la session |
| Stripe MCP custom | plugin Stripe activé mais MCP custom non confirmé |
| nano-banana CLI npm global | arsenal annonce `npx nano-banana-2` — pas dans la liste npm globale |
| Apify CLI / clé API | 12 skills Apify mais aucun MCP Apify confirmé |
| 64 skills d'écart | 1 369 réels vs 1 433 annoncés → soit l'arsenal compte aussi les `:`namespacés des plugins (probable) |
| Scripts Python MonaSwitch (140+) | dossier `MonaSwitch_HQ/scripts/` non visible depuis le projet courant |
| 280 repos GitHub utiles | annoncés ; existence à confirmer côté `MonaSwitch_Sandbox/repos/` |

### Skills demandés en Phase 4b (introuvables)

Confirmation : les skills suivants **n'existent pas** dans le catalogue Studio (vérifié par `ls`) :
- `skill-hook-generator`
- `skill-script-builder`
- `cinema-director` (mais `cinematographer-ai` existe ✓)
- `founder-viral-posts`

---

## ⚠️ PROBLÉMATIQUES (présents mais comportement à confirmer)

| Outil | Problème |
|---|---|
| `supabase` (npm global) | Entrée présente sans version → probablement cassé |
| `ffmpeg` | Fonctionne (testé avec extraction theFIVE.MP4) mais hors PATH système → fragile pour scripts qui appellent `ffmpeg` directement |
| MCPs `gemini-ai`, `stitch`, `google-drive`, `pencil`, `shopify-levinenbouche` | Tools deferred listés en system-reminder mais usage live non testé dans cette session |
| `docker` | Absent → si Supabase self-hosted ou Playwright Docker requis : bloque |
| `mcp__pencil` autorisé seulement | Dans `settings.json`, seul `mcp__pencil` est en `permissions.allow` → les autres MCPs demandent confirmation à chaque usage |
| Hooks GSD actifs | 3 hooks Node.js exécutés à chaque session — à auditer pour stabilité (présence de `tipsHistory.numStartups: 106` indique sessions stables) |

---

## 📋 PLAN D'ACTION

### 🔴 Priorité 1 — Débloquant pour les 13 projets (à faire avant production massive)

1. **Ajouter ffmpeg au PATH système** (Windows env var) — débloque Remotion + scripts vidéo CLI
2. **Audit MCP complet** : exécuter `claude mcp list` dans une session dédiée pour comparer 7 vs 29 annoncés et clarifier ce qui est vraiment connecté
3. **Réparer `supabase` CLI global** : `npm uninstall -g supabase && npm i -g supabase`
4. **Vérifier `MonaSwitch_HQ/scripts/`** : 140+ scripts Python annoncés, confirmer présence + créer un index dans `00_SYSTEM/04_INVENTAIRES/`
5. **Décider docker oui/non** selon roadmap des 13 projets (si Supabase local + tests E2E containerisés requis → installer ; sinon : skip)

### 🟡 Priorité 2 — Renforcement vidéo (impact direct Phase 4 packs Monamedia)

6. Tester effectivement le MCP `gemini-ai` (`generate_image` Imagen + `generate_video` Veo) dans la session pour confirmer fonctionnement
7. Vérifier disponibilité MCP **Higgsfield** (cinéma + clips IA) — sinon installer via Composio
8. Vérifier MCP/API **FAL AI** (`fal-generate`, `fal-image-edit`, etc. ont 6 skills mais nécessitent connexion API)
9. Confirmer accès **HeyGen** (interface web validée — vérifier si MCP custom existe pour automatisation)
10. Vérifier **nano-banana-2** : `npm i -g nano-banana-2` si manquant

### 🟢 Priorité 3 — Catalogue / découvrabilité

11. Générer un index complet des 1 369 skills par catégorie (script `ls + cat description` à créer dans `00_SYSTEM/SCRIPTS/`)
12. Documenter dans `00_SYSTEM/REGISTRE_MCP_CONNECTEURS.md` les 7 MCPs réellement connectés vs 29 annoncés
13. Mettre à jour `00_SYSTEM/INVENTAIRE_ARSENAL_VIVANT.md` avec ce diff (skills 1369 réels au lieu de 1362)
14. Cataloguer les agents `monaswitch-*` (6 agents propriétaires) avec leurs descriptions complètes — usage prévu pour SEO/contenu/Slack/WP

### ⚪ Priorité 4 — Optionnel

15. Cataloguer les 280 repos GitHub annoncés (audit `MonaSwitch_Sandbox/repos/`)
16. Évaluer `serena`, `playground`, `cli-anything` (plugins activés mais peu connus)
17. Documenter `monaswitch-vault/` (`/c/Users/alain/.claude/monaswitch-vault/`) — vault Obsidian-like potentiellement à fusionner avec le Studio Drive

---

## 🚦 NOTES MÉTHODOLOGIE

- **Cet inventaire ne remplace pas** `INVENTAIRE_ARSENAL_VIVANT.md` (vision déclarée + master stack) ni `MONASWITCH_ARSENAL_COMPLET.md` (référence complète) — il les **complète** par un audit en direct depuis Claude Code.
- L'écart -64 skills (1 369 réels vs 1 433 annoncés) s'explique probablement par les skills namespacés des plugins (`pr-review-toolkit:*`, `agent-sdk-dev:*`, etc.) qui sont comptés dans l'arsenal mais sortent du dossier `~/.claude/skills/` brut.
- L'écart -22 MCPs (7 réels vs 29 annoncés) est plus préoccupant : à clarifier avec un audit MCP dédié.
- Aucune installation, modification, ou suppression effectuée durant cet inventaire. Lecture seule.
