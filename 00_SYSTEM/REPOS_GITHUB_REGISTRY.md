# MONASWITCH STUDIO — REGISTRE REPOS GITHUB

> Liste des repos GitHub utilisés, à auditer, à installer plus tard, en sandbox, ou refusés.
> Document **vivant** — mis à jour à chaque ajout/retrait.

**Créé le** : 2026-04-26
**Dernière mise à jour** : 2026-04-26 (enrichi avec Master Stack — repos classés par phase)

📌 **Source ajoutée** : `MonaSwitch_Studio_IA_Master_Stack.md` (placée dans `00_SYSTEM/05_STACK_REFERENCES/`)

---

## 🎯 CLASSIFICATION

Chaque repo a un statut clair :

| Statut | Signification |
|--------|---------------|
| 🟢 **Déjà présent** | Confirmé installé/disponible |
| 🟡 **À auditer** | Identifié comme utile, audit avant install |
| 🔵 **Plus tard** | Pas urgent, après stabilité |
| 🟠 **Sandbox obligatoire** | À tester en isolation seulement |
| 🔴 **Différé/non prioritaire** | Pas le bon moment |
| ⚫ **Refusé** | Évalué et écarté |

---

## 🟢 DÉJÀ PRÉSENT

### Officiels Anthropic
| Repo | Usage |
|------|-------|
| github.com/anthropics/claude-code | Claude Code v2.1.119 |
| github.com/anthropics/skills | Marketplace skills officielle |

### Skills SEO (probables dans 1362 skills)
| Repo | Usage |
|------|-------|
| github.com/aaron-he-zhu/seo-geo-claude-skills | 20 skills SEO/GEO |
| github.com/TheCraigHewitt/seomachine | Pipeline SEO 500K pages |
| github.com/zubair-trabzada/ai-marketing-claude | 15 skills marketing |

### Skills Marketing & Contenu
| Repo | Usage |
|------|-------|
| github.com/coreyhaines31/marketingskills | 26 skills marketing |
| github.com/CosmoBlk/email-marketing-bible | 55 000 mots référence |
| github.com/ComposioHQ/awesome-claude-skills | Skills Composio |

### Vidéo & Image
| Repo | Usage |
|------|-------|
| github.com/kingbootoshi/nano-banana-2-skill | CLI Nano Banana |
| github.com/YouMind-OpenLab/nano-banana-pro-prompts-recommend-skill | Prompts |
| github.com/YouMind-OpenLab/awesome-nano-banana-pro-prompts | Collection |
| github.com/remotion-dev/remotion | Remotion 4.0.434 (global) |

### Agents & Automatisation
| Repo | Usage |
|------|-------|
| github.com/obra/superpowers | TDD + plans + review |
| github.com/frankbria/ralph-claude-code | Agent autonome boucle |
| github.com/snarktank/ralph | Ralph original |
| github.com/ruvnet/ruflo | Framework agents |
| github.com/mvanhorn/last30days-skill | Workflow structuré |
| github.com/upstash/context7 | Anti-hallucination |
| github.com/thedotmack/claude-mem | Mémoire persistante v6.5.0 |

### Design & Outils
| Repo | Usage |
|------|-------|
| github.com/coleam00/excalidraw-diagram-skill | Diagrammes |
| github.com/kepano/obsidian-skills | 5 skills Obsidian |
| github.com/mjmlio/mjml | Newsletters HTML |
| github.com/PleasePrompto/notebooklm-skill | Podcasts auto |
| github.com/lackeyjb/playwright-skill | Tests web |

### Plugins Claude Code
| Repo | Usage |
|------|-------|
| github.com/vercel/vercel-plugin | Déploiement |
| github.com/slackapi/slack-mcp-plugin | Slack |
| github.com/figma/mcp-server-guide | Figma |
| github.com/firecrawl/firecrawl-claude-plugin | Scraping |
| github.com/getsentry/sentry-for-claude | Errors |
| github.com/PostHog/ai-plugin | Analytics |
| github.com/coderabbitai/claude-plugin | Code review |
| github.com/atlassian/atlassian-mcp-server | Jira/Confluence |
| github.com/stripe/ai | Paiements |
| github.com/qodo-ai/qodo-skills | Quality |

### Resources Clonées (~/.claude/resources/)
| Repo | Fichiers |
|------|----------|
| github.com/msitarzewski/agency-agents | 196 templates |
| github.com/DavidHDev/react-bits | 1948 composants |
| github.com/travisvn/awesome-claude-skills | Catalogue |
| github.com/anthropics/claude-cookbooks | Patterns |
| github.com/JCodesMore/ai-website-cloner-template | Clone sites |

---

## 🟡 À AUDITER (du Master Stack — Phase 1 cash priority)

### Catégorie A — Cockpit
| Repo | Priorité MS | Pré-requis |
|------|-------------|------------|
| Claude Code Desktop (officiel) | A | Audit avant install, sandbox |
| Claude Code Routines (docs) | A | Lecture seule au début |
| github.com/farion1231/cc-switch | B+ | Audit (accès configs/clés) |

### Catégorie B — Sites Premium
| Repo | Priorité MS |
|------|-------------|
| github.com/VoltAgent/awesome-claude-design | A- |
| github.com/VoltAgent/awesome-design-md | B+ |
| github.com/google-labs-code/stitch-skills | A- |

### Catégorie C — Vidéo / Image
| Repo | Priorité MS | Risque |
|------|-------------|--------|
| github.com/wuyoscar/gpt_image_2_skill | A | Coût génération |
| github.com/intellectronica/agent-skills | B | - |
| github.com/jordanrendric/claude-video-vision | A- | - |
| github.com/browser-use/video-use | B+/A- | Confidentialité rushs |
| github.com/heygen-com/hyperframes | A- | Différent du HeyGen avatar |
| github.com/Anil-matcha/Open-Generative-AI | B+/A- | "Gratuit" trompeur, vérifier coûts |

### Catégorie D — Ads / SEO / CMS (PRIORITÉ CASH)
| Repo | Priorité MS | Pour offre |
|------|-------------|------------|
| github.com/AgriciDaniel/claude-ads | **A** | Audit Ads Express |
| github.com/AgriciDaniel/claude-seo | A- | Audit SEO Express |
| github.com/Shopify/shopify-ai-toolkit | **A+** | Pack Optim Shopify (officiel) |

### Catégorie E — Sales / Marketing (PRIORITÉ CASH)
| Repo | Priorité MS | Pour |
|------|-------------|------|
| github.com/zubair-trabzada/ai-sales-team-claude | **A+** | Prospection MonaSwitch |
| github.com/zubair-trabzada/ai-marketing-claude | A | Audit marketing IA |
| github.com/ncklrs/startup-os-skills | A- | Organisation 24 projets |

### Catégorie F — Sécurité / Qualité
| Repo | Priorité MS |
|------|-------------|
| github.com/anthropics/claude-code-security-review | A |
| github.com/daymade/claude-code-skills | B+/A- (Skill Creator) |
| github.com/altmbr/claude-research-skill | B+ (sous-agents recherche) |

---

## 🔵 PLUS TARD (après stabilité)

| Repo | Pourquoi attendre |
|------|-------------------|
| github.com/anthropics/claude-plugins-official | MCP Builder — après projets stables |
| github.com/w95/awesome-claude-corporate-skills | Structure entreprise — après cash |
| github.com/alirezarezvani/claude-skills | Bibliothèque — piocher seulement |
| github.com/borghei/Claude-Skills | Bibliothèque — piocher seulement |
| github.com/sickn33/antigravity-awesome-skills | 1000+ skills — sélection 10-20 |

---

## 🟠 SANDBOX OBLIGATOIRE

| Repo | Pourquoi sandbox |
|------|------------------|
| github.com/pandnyr/self-healing-claude | Risque relances auto + masquage erreurs |
| github.com/ruvnet/ruflo | Orchestration multi-agents — pas en prod |
| github.com/vincentkoc/oh-my-claude-code | Chaos multi-agent à éviter |

---

## 🔴 DIFFÉRÉ / NON PRIORITAIRE

| Élément | Pourquoi |
|---------|----------|
| Zopia (zopia.ai) | Plateforme web, pas de repo public installable |
| Emergent Fake 3D Scroll Kit | Ressource privée/ZIP, pas GitHub |
| Méga-prompt One-Shot Cinematic | Prompt/template viral, pas repo |
| Agentic Academy | Formation — pas prioritaire si vidéos seules |

---

## ⚫ ÉVALUÉS ET REFUSÉS

(Vide pour l'instant — on enrichira au fur et à mesure)

| Repo | Pourquoi refusé | Date |
|------|------------------|------|

---

## ⚪ REPOS PROJETS CLIENTS (sites)

À tracker quand on les met sur GitHub :

| Projet | Repo prévu | Statut |
|--------|-----------|--------|
| 01-casse-auto-vhu | (à créer) | Local seulement |
| 02-new-addal | (à créer) | Local seulement |
| 03-flaak-keratopigmentation | (à créer) | Local seulement |
| 06-monamedia | (à créer) | Local seulement |
| (autres) | ... | ... |

→ Quand on commence à push, on remplit cette table.

---

## 📊 STATS GLOBALES

| Métrique | Valeur |
|----------|--------|
| Total repos Git locaux | 280 (audit V2 2026-04-26) |
| Total projets npm utiles | 210 |
| Skills officiels Anthropic | 2 |
| Skills communauté installés | ~25+ |
| Plugins Claude Code | ~10 |
| Resources clonées | 5 |
| **Repos à auditer (Master Stack)** | **~30** |
| **Repos sandbox obligatoire** | **3** |
| **Repos différés** | **4** |

---

## 🚦 RÈGLES D'INSTALLATION (du Master Stack)

> Audit d'abord. Installation ensuite. Connexion API en dernier. Production réelle uniquement après validation humaine.

Pour chaque repo à installer :
1. **Audit du repo** (sécurité, permissions, dépendances)
2. **Validation humaine** (utilité confirmée pour MonaSwitch)
3. **Test sandbox** (jamais directement en projet client)
4. **Documentation** dans `INVENTAIRE_ARSENAL_VIVANT.md`
5. **Si ça marche** → passer en 🟢 Déjà présent ici
6. **Si non** → passer en ⚫ Refusé avec raison

---

## 🎯 PRIORITÉS A IDENTIFIÉES

D'après le Master Stack, **les repos qui débloquent du cash** :

1. **github.com/zubair-trabzada/ai-sales-team-claude** (A+) — prospection
2. **github.com/Shopify/shopify-ai-toolkit** (A+) — offre Shopify (officiel)
3. **github.com/AgriciDaniel/claude-ads** (A) — offre Audit Ads Express
4. **github.com/zubair-trabzada/ai-marketing-claude** (A) — audit marketing
5. **github.com/wuyoscar/gpt_image_2_skill** (A) — créa ads
6. **github.com/lackeyjb/playwright-skill** (A+) — qualité sites
7. **github.com/anthropics/claude-code-security-review** (A) — sécurité

→ **À auditer en premier quand on arrête de papoter et qu'on attaque.**

---

## 📜 HISTORIQUE

| Date | Modification | Par |
|------|--------------|-----|
| 2026-04-26 | Création + recensement initial | Alain + Claude + GPT-5.5 |
| 2026-04-26 | Enrichi avec Master Stack — repos classés à auditer/plus tard/sandbox/différés | Alain + Claude + GPT-5.5 |
