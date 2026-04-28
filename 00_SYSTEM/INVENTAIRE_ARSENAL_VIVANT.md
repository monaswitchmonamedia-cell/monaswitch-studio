# MONASWITCH STUDIO — INVENTAIRE ARSENAL VIVANT

> **Document VIVANT** mis à jour au fil de l'eau, pas un audit fixe.
> Vision globale de tout ce qu'on a, en complément de l'audit local.

**Créé le** : 2026-04-26
**Dernière mise à jour** : 2026-04-26 (enrichi avec Master Stack)
**Méthode** : audit local + déclarations utilisateur + observations conversation + Master Stack

---

## 🎯 PHILOSOPHIE

L'audit local sécurisé (`Audit-StudioGlobal.ps1`) ne voit pas tout — par design.
Ce document complète avec ce que l'audit ne peut pas voir :
- MCPs Claude.ai (côté serveur Anthropic)
- Outils externes (HeyGen, ElevenLabs, etc.)
- Clés API stockées dans `.env` non scannés
- Plans payants en cours

**Règle d'or** : on enrichit ce fichier **uniquement quand on découvre quelque chose de nouveau** ou quand un nouvel outil est confirmé installé/configuré.

---

## 📚 SOURCES INTÉGRÉES

| Source | Fiabilité | Exemple |
|--------|-----------|---------|
| Audit local Audit-StudioGlobal.ps1 | ⭐⭐⭐⭐⭐ | skills, agents, repos, outils CLI |
| Claude.ai (cette conversation) | ⭐⭐⭐⭐ | MCPs connectés visibles |
| Déclarations utilisateur | ⭐⭐⭐ | abonnements payés, clés perdues |
| **MonaSwitch_Studio_IA_Master_Stack.md** | ⭐⭐⭐⭐ | **vision stratégique 24 projets** |
| À vérifier | ⭐ | tout ce qui n'est pas confirmé |

📌 **Source ajoutée** : `MonaSwitch_Studio_IA_Master_Stack.md` (placée dans `00_SYSTEM/05_STACK_REFERENCES/`)

---

## 🟢 CONFIRMÉ — INSTALLÉ ET FONCTIONNEL

### Outils CLI (9/19)
| Outil | Version | Source |
|-------|---------|--------|
| node | v24.14.0 | audit local |
| npm | v11.9.0 | audit local |
| git | 2.53 | audit local |
| claude code | 2.1.119 | audit local |
| vs code | 1.117 | audit local |
| python | 3.12.10 | installé 2026-04-26 |
| pip | 25.0.1 | installé 2026-04-26 |
| gh (GitHub CLI) | 2.91.0 | installé 2026-04-26 |
| ffmpeg | dernière | installé 2026-04-26 |

### Skills, Agents, Repos
| Catégorie | Quantité | Source |
|-----------|----------|--------|
| Skills Claude Code | 1362 | audit local |
| Agents personnalisés | 40 (dont 6 monaswitch-*) | audit local |
| Repos Git utiles | 280 | audit local V2 |
| Projets npm utiles | 210 | audit local V2 |

### Outils externes (déclarés actifs)
| Outil | Plan / Coût | Statut |
|-------|-------------|--------|
| Claude Max | 200€/mois | ✅ atelier principal |
| ChatGPT 5.5 Pro | 30€/mois | ✅ stratégie |
| HeyGen Enterprise | ~89$/mois | ✅ via MCP |
| ElevenLabs | payant | ✅ actif |
| Higgsfield | crédits | ✅ actif |
| CreaShorts | payant | ✅ actif |
| Clone Viral | payant | ✅ actif |
| Flow / Nano Banana 2 | gratuit/payant | ✅ actif |
| Abacus | payant | ✅ actif |
| Google Ultra | payant | ✅ actif |
| SEMrush | actif | ✅ clé existe |
| SurferSEO | actif | ✅ clé existe |
| Remotion 4.0.434 | global | ✅ installé |

---

## 🆕 FAMILLES À ÉVALUER (du Master Stack)

D'après `MonaSwitch_Studio_IA_Master_Stack.md` — **rien n'est installé, tout est À AUDITER**.

### Catégorie A — Cockpit / Exécution
| Outil | Priorité Master Stack | Statut local |
|-------|----------------------|---------------|
| Claude Code Desktop | A | ❓ à vérifier (cockpit visuel) |
| Claude Code Routines | A | ⚪ pas activé (lecture seule au début) |
| cc-switch | B+ | ⚪ pas installé |

### Catégorie B — Sites / Design / UI
| Outil | Priorité | Statut |
|-------|----------|--------|
| Claude Design | A | ✅ accessible (claude.ai/design) |
| Awesome Claude Design | A- | ⚪ à auditer |
| Awesome DESIGN.md | B+ | ⚪ à auditer |
| Google Stitch Skills | A- | 🔵 MCP Stitch connecté |
| Frontend Design Skill | A+ | ✅ probable dans 1362 skills |
| Méga-prompt Cinematic Landing | A- | 📄 prompt/template (pas repo) |
| Emergent Fake 3D Scroll Kit | B+/A- | ❓ ressource privée |

### Catégorie C — Vidéo / Image / Ads
| Outil | Priorité | Statut |
|-------|----------|--------|
| GPT Image 2 Skill | A | ⚪ à auditer |
| Agent Skills (alt. image) | B | ⚪ à auditer |
| Seedance / Higgsfield Workflow | A- | ✅ comptes actifs |
| Claude + Higgsfield + Playwright Pipeline | A- | ⚪ à construire |
| Claude Video Vision | A- | ⚪ à auditer |
| video-use | B+/A- | ⚪ à auditer |
| HeyGen Hyperframes | A- | ⚪ à auditer (différent du HeyGen avatar) |
| Open Generative AI | B+/A- | ⚪ test sans données sensibles |
| Zopia | B- | ⚪ pas prioritaire |

### Catégorie D — Ads / SEO / CMS
| Outil | Priorité | Statut |
|-------|----------|--------|
| Claude Ads Audit Skill | A | ⚪ à auditer (clé pour offre Audit Ads) |
| Claude SEO | A- | ⚪ à auditer |
| Shopify AI Toolkit | A+ | ⚪ à auditer (officiel Shopify, lecture seule d'abord) |
| WordPress REST API workflow | A- | ⚪ à structurer |
| PrestaShop Webservice | B+ | ⚪ CSV avant API |

### Catégorie E — Sales / Marketing / Agence
| Outil | Priorité | Statut |
|-------|----------|--------|
| AI Sales Team | A+ | ⚪ à auditer (cash priority) |
| AI Marketing Suite | A | ⚪ à auditer |
| Startup OS Skills | A- | ⚪ à auditer |
| Awesome Claude Corporate Skills | B+ | ⚪ à auditer |
| Alirez Resvani Claude Skills | A- (piocher) | ⚪ ne pas tout installer |
| Borghei Claude-Skills | B+ | ⚪ ne pas tout installer |
| Antigravity Awesome Skills | B+/A- | ⚪ ne pas tout installer (1000+) |

### Catégorie F — MCP / API / Sécurité / Qualité
| Outil | Priorité | Statut |
|-------|----------|--------|
| Playwright Skill | A+ | ✅ probable (lackeyjb) |
| Security Review (officiel) | A | ⚪ à auditer |
| Superpowers | A- | ✅ probable installé |
| MCP Builder | A- (plus tard) | ⚪ après stabilité |
| Skill Creator | B+/A- | ⚪ pour skills MonaSwitch maison |
| Self-Healing Claude | B (sandbox seulement) | ⚪ risque relances auto |
| Research Skill | B+ | ⚪ à auditer |
| RUFLO | B+ → A plus tard | ⚪ pas en prod maintenant |
| Oh My Claude / Code | B+/A- | ⚪ chaos multi-agent à éviter |

---

## 🟡 À VÉRIFIER

| Élément | Pourquoi à vérifier |
|---------|---------------------|
| Quota SEMrush actuel | Ancienne clé avait 0 unités API |
| ELEVENLABS_API_KEY | Compte actif mais clé non configurée en env var |
| Plugins Claude Code détaillés | L'audit a affiché 0, à vérifier |
| MCPs locaux Claude Code | Audit affiché 0, à vérifier `.claude.json` quand Claude Code fermé |
| Clés API dans `.env` projets | Pas scannés par sécurité |

---

## ⚪ NON CONFIGURÉ — À FAIRE SI BESOIN

| Outil/Clé | Quand l'activer |
|-----------|-----------------|
| ANTHROPIC_API_KEY | Si scripts API Claude (rare avec Claude Max) |
| OPENAI_API_KEY | Si scripts GPT-Image (rare avec ChatGPT Pro) |
| GITHUB_TOKEN | Quand on commence à pusher des repos |
| Stripe LIVE | Quand un projet est prêt à encaisser |
| pnpm / bun | Optionnels |
| docker, go, rust, kubectl | Pas pour l'instant |

---

## 🔴 NON NÉCESSAIRE / ÉCARTÉ

- **Codex** (D-014) — optionnel, plus tard
- **Metricool comme dépendance par défaut** (D-005)
- Scan global agressif PC/Drive (D-007, D-008)
- **Double racine `C:\MonaSwitch\`** — la racine OFFICIELLE reste `G:\Mon Drive\MonaSwitch_Studio\`

---

## 📝 PRIORITÉS A (du Master Stack — synthèse)

À garder en tête mais **rien n'est lancé maintenant** :

1. Cash : AI Sales Team + AI Marketing Suite + Claude Ads + Claude SEO
2. Sites premium : Claude Design + Stitch + Frontend Design + Playwright + Security Review
3. Créa : GPT Image 2 + Seedance/Higgsfield + Claude Video Vision + Hyperframes
4. CMS : Shopify AI Toolkit (officiel) + WordPress REST + PrestaShop
5. Cockpit : Claude Code Desktop + Routines (lecture seule au début)

---

## 🛡️ RÈGLES INTÉGRÉES DU MASTER STACK

> Audit d'abord. Installation ensuite. Connexion API en dernier. Production réelle uniquement après validation humaine.

Interdictions par défaut :
- Pas de connexion API sensible sans validation
- Pas de génération payante sans estimation coût
- Pas de modification prix/stock/commandes/Ads sans validation
- Pas d'upload images patients FLAAK sans validation
- Pas d'agent autonome en prod avant test sandbox
- Pas d'install grosse biblio complète sans sélection
- Pas de modif projet existant sans backup

---

## 📜 HISTORIQUE

| Date | Modification | Par |
|------|--------------|-----|
| 2026-04-26 | Création initiale + Phase 1 (Python, gh, ffmpeg) | Alain + Claude + GPT-5.5 |
| 2026-04-26 | Enrichi avec Master Stack (Catégories A à G + règles) | Alain + Claude + GPT-5.5 |

---

## 🔄 RÈGLE DE MISE À JOUR

Quand un outil est **installé**, **configuré**, **désactivé**, ou **découvert** :
1. Mettre à jour ce fichier (date + ce qui change)
2. Si décision structurante → ajouter dans `DECISIONS_LOG.md`
3. Si changement workflow → mettre à jour `MAPPING_FORMATS_OUTILS.md`
4. Si nouveau repo → ajouter dans `REPOS_GITHUB_REGISTRY.md`
