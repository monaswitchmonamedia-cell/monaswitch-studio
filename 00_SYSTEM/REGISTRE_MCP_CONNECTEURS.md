# MONASWITCH STUDIO — REGISTRE MCPs & CONNECTEURS

> Liste de tous les MCPs et connecteurs accessibles, avec source de vérification.
> **Aucun secret, aucun token affiché ici.**

**Créé le** : 2026-04-26
**Dernière mise à jour** : 2026-04-26 (enrichi avec Master Stack)

📌 **Source ajoutée** : `MonaSwitch_Studio_IA_Master_Stack.md` (placée dans `00_SYSTEM/05_STACK_REFERENCES/`)

---

## 🎯 PRINCIPE

Il y a **2 endroits différents** où les MCPs peuvent vivre :

| Espace | Où | Visible par |
|--------|-----|-------------|
| **Claude.ai (web/mobile)** | côté serveur Anthropic | conversation Claude.ai courante |
| **Claude Code local** | `.claude.json` machine | `claude mcp list` ou audit |

---

## 🌐 MCPs Claude.ai (côté web/mobile) — ~24 connectés

### Productivité (5)
| MCP | Usage |
|-----|-------|
| Gmail | Lecture/rédaction emails |
| Google Calendar | Agenda |
| Google Drive | Documents partagés (le Studio !) |
| Slack | Communication équipe |
| Make | Scénarios automatisation |

### SEO & Marketing (3)
| MCP | Usage |
|-----|-------|
| Semrush | KW, audit, positions |
| Context7 | Documentation à jour anti-hallucination |
| Vibe Prospecting (Explorium) | Prospection B2B |

### Design & Contenu (3)
| MCP | Usage |
|-----|-------|
| Figma | Design + prototypes |
| Canva | Designs auto via IA |
| Heygen | Avatar parlant |

### Vidéo / IA (1)
| MCP | Usage |
|-----|-------|
| Hugging Face | Modèles IA + spaces |

### Dev & Infrastructure (5)
| MCP | Usage |
|-----|-------|
| Supabase | DB + auth + edge functions |
| Netlify | Déploiement |
| Stripe | Paiements (TEST) |
| Airtable | CRM toutes bases |
| WordPress.com | Publication contenu |

### Sites Framer (6 instances visibles)
| MCP | Site |
|-----|------|
| FRAMER MONAMEDIA | monamedia.mc |
| FRAMER MONASWITCH | monaswitch.com |
| FRAMER CASSEAUTOVHU | casseautovhu.com |
| FRAMER IRLANDE OFF | creation-societe-irlande.com |
| FRAMER MCE OFF | (à clarifier) |
| FRAMER MONASWITCH OFF AGENCY REAL | (à clarifier) |

---

## 💻 MCPs Claude Code Local

**Statut affiché par audit** : 0 (bug : Claude Code tournait pendant audit)

### À VÉRIFIER quand Claude Code n'est pas lancé

```powershell
Get-Content $env:USERPROFILE\.claude.json | ConvertFrom-Json | Select-Object -ExpandProperty mcpServers | Format-List
```

### Ce qu'on sait déjà (déclaré avant)
| MCP local connu | Statut probable |
|------------------|-----------------|
| gemini-ai | ✅ probable (GEMINI_API_KEY confirmée) |
| stitch | ✅ probable |
| shopify-levinenbouche | ✅ probable |
| slack | ✅ probable |
| google-drive | ✅ probable |
| surferseo (custom) | ✅ probable |
| pencil | ✅ probable |

---

## 🔌 PLUGINS Claude Code

**Statut affiché** : 0 (même bug)

### Connus
| Plugin | Source GitHub |
|--------|---------------|
| Vercel | github.com/vercel/vercel-plugin |
| Slack | github.com/slackapi/slack-mcp-plugin |
| Figma | github.com/figma/mcp-server-guide |
| Firecrawl | github.com/firecrawl/firecrawl-claude-plugin |
| Sentry | github.com/getsentry/sentry-for-claude |
| PostHog | github.com/PostHog/ai-plugin |
| CodeRabbit | github.com/coderabbitai/claude-plugin |
| Atlassian | github.com/atlassian/atlassian-mcp-server |
| Stripe | github.com/stripe/ai |
| Superpowers | github.com/obra/superpowers |
| Qodo | github.com/qodo-ai/qodo-skills |

---

## 🆕 MCPs / Routines / Connecteurs À ÉVALUER PLUS TARD

D'après `MonaSwitch_Studio_IA_Master_Stack.md`. **Rien n'est activé maintenant**.

| Outil/Connecteur | Type | Priorité | Risque | Pré-requis |
|------------------|------|----------|--------|-----------|
| **Claude Code Desktop** | Cockpit | A | App desktop sensible | Audit avant install |
| **Claude Code Routines** | Automatisation cloud | A | Lecture seule au début | Aucune action sans validation |
| **cc-switch** | Multi-CLI panel | B+ | Accès configs/clés | Audit obligatoire |
| **Shopify AI Toolkit** | E-commerce | A+ | Modif produits/prix | Lecture seule + backup |
| **WordPress REST API** | CMS | A- | Publication auto | Backup + test 2 pages |
| **PrestaShop Webservice** | E-commerce | B+ | Modif produits | CSV avant API |
| **Make** (déjà connecté) | Automation | A | Scénarios payants | Limites de crédits |
| **Airtable** (déjà connecté) | CRM | A | Données clients | Permissions minimales |
| **Semrush** (déjà connecté) | SEO | A | Quota API | Vérifier crédits |
| **SurferSEO** | SEO | A | Quota API | Lecture seule d'abord |
| **HeyGen** (déjà connecté) | Vidéo | A | Coût génération | Validation avant batch |

---

## 📋 GOUVERNANCE — Pour CHAQUE MCP/connecteur

Avant d'utiliser un connecteur en production, vérifier :

```text
☐ Coût fixe (mensuel/annuel)
☐ Coût variable (par appel/génération)
☐ Permissions données (lecture/écriture)
☐ Lecture seule possible ?
☐ Données accessibles (clients, fichiers, etc.)
☐ Validation humaine requise pour quelles actions ?
☐ Backup possible ?
☐ Rollback possible ?
☐ Statut clé : présente / absente / via MCP / à vérifier
☐ Date dernière revue
```

---

## 🛠 USAGE PAR FORMAT (rappel)

Quel MCP utiliser pour quoi → voir `MAPPING_FORMATS_OUTILS.md`.

Résumé rapide :
- **Article SEO** → Semrush + SurferSEO + WordPress
- **Carrousel IG** → Figma + Canva
- **Vidéo UGC** → HeyGen (MCP) + Gemini AI + Remotion
- **Landing page** → Framer (selon projet) + Figma + Stitch
- **CRM** → Airtable + Slack
- **Prospection** → Vibe Prospecting + Gmail + Make
- **E-commerce LeVinEnBouche** → shopify-levinenbouche
- **Doc** → Google Drive + Context7

---

## 📜 HISTORIQUE

| Date | Modification | Par |
|------|--------------|-----|
| 2026-04-26 | Création + recensement initial | Alain + Claude + GPT-5.5 |
| 2026-04-26 | Enrichi avec Master Stack (gouvernance + connecteurs à évaluer) | Alain + Claude + GPT-5.5 |
