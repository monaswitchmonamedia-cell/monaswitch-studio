# MONASWITCH STUDIO — INSTALLATION PRIORITIES

> Liste claire et hiérarchisée des installations à faire.
> **À valider avec GPT-5.5 avant chaque action.**

**Dernière mise à jour** : 2026-04-26
**Statut** : Mémoire verrouillée, prêt pour installations

---

## 🔴 PRIORITÉ CRITIQUE — à installer en premier

### 1. Python 3.12+
**Pourquoi critique** :
- Tu as 140+ scripts Python existants dans `MonaSwitch_HQ/scripts/` qui ne tournent pas sans Python
- Beaucoup de skills MonaSwitch utilisent Python (audits SEO, scraping, NLP)
- Tous les scripts `flaak-*.py` (audits Schema, meta, hreflang, etc.) dépendent de Python

**Installation Windows** :
- Aller sur https://www.python.org/downloads/
- Télécharger Python 3.12 ou 3.13 (dernière version stable)
- ⚠️ Cocher **"Add Python to PATH"** lors de l'installation
- Vérifier : `python --version` puis `pip --version`

**Alternative** : `winget install Python.Python.3.12`

**Risque** : Aucun. Python est universellement utile.

---

### 2. GitHub CLI (`gh`)
**Pourquoi critique** :
- Pour cloner facilement les repos GitHub à venir (Self-Healing, Superpowers, etc.)
- Pour gérer les repos privés MonaSwitch
- Pour automatiser PRs et issues

**Installation** :
- `winget install GitHub.cli`
- Ou télécharger : https://cli.github.com/
- Authentification : `gh auth login`

**Risque** : Aucun.

---

### 3. ffmpeg
**Pourquoi critique** :
- Encodage vidéo nécessaire pour Remotion (sans ffmpeg, les rendus échouent)
- Conversion de formats audio/vidéo
- Pipeline UGC + Cinematic dépendent de ffmpeg

**Installation** :
- `winget install Gyan.FFmpeg`
- Ou télécharger : https://ffmpeg.org/download.html (build Gyan ou BtbN)
- Ajouter à PATH si install manuelle
- Vérifier : `ffmpeg -version`

**Risque** : Aucun.

---

## 🟡 PRIORITÉ IMPORTANTE — phase 2 (clés API)

À configurer après les outils CLI critiques.

### 4. HEYGEN_API_KEY
**Usage** : Avatar parlant pour vidéos UGC
**Plan actuel** : Enterprise ~89$/mois (déjà payé)
**Récupérer la clé** : dashboard HeyGen → Settings → API
**Configurer Windows** :
```powershell
setx HEYGEN_API_KEY "votre-cle-ici"
```
(Fermer/rouvrir PowerShell après)

---

### 5. SEMRUSH_API_KEY
**Usage** : Recherche KW, audit domaine, positions, concurrents
**Récupérer** : SEMrush dashboard → API
**Configurer** : `setx SEMRUSH_API_KEY "votre-cle-ici"`

⚠️ Note : la clé SEMrush historique [MASKED] avait 0 unités API restantes au dernier check. Vérifier le quota actuel avant de la réutiliser, ou en générer une nouvelle.

---

### 6. SURFER_API_KEY (ou SURFERSEO_API_KEY)
**Usage** : Scoring contenu SEO via API custom MCP
**Récupérer** : SurferSEO dashboard → API
**Configurer** : `setx SURFER_API_KEY "votre-cle-ici"`

⚠️ Tu as déjà un MCP `surferseo` configuré dans Claude Code. Vérifier s'il fonctionne avant d'ajouter la clé en env.

---

### 7. ELEVENLABS_API_KEY
**Usage** : Voix Nicolas (TTS) pour vidéos UGC + Cinematic + Reels
**Plan actuel** : payant (déjà actif)
**Configurer** : `setx ELEVENLABS_API_KEY "votre-cle-ici"`

---

### 8. GITHUB_TOKEN (optionnel mais utile)
**Usage** : Authentification `gh` CLI + scripts GitHub
**Créer** : github.com/settings/tokens (classic ou fine-grained)
**Permissions minimales** : `repo` (lecture privés), `workflow` (Actions)
**Configurer** : `setx GITHUB_TOKEN "ghp_..."`

---

## 🟢 PRIORITÉ BONUS — quand utile

### 9. ANTHROPIC_API_KEY
**Usage** : Scripts qui appellent Claude par API (pas Claude Code)
**Note** : Avec Claude Max et Claude Code, tu n'en as **pas besoin** pour 95% des cas
**À configurer** : seulement si un workflow concret le demande

---

### 10. OPENAI_API_KEY
**Usage** : GPT-Image (DALL-E 3 / GPT-4o) pour génération image via API
**Note** : Tu as ChatGPT Pro 30€/mois → tu peux utiliser GPT-Image via l'interface sans API
**À configurer** : seulement si tu veux automatiser via scripts

---

### 11. pnpm / bun (alternatives à npm)
**Usage** : Plus rapide que npm pour install/run
**Installation** :
- `npm install -g pnpm`
- `npm install -g bun` (ou via https://bun.sh/)
**Risque** : Aucun. Optionnel.

---

### 12. STRIPE_API_KEY (test puis live)
**Usage** : Si tu intègres paiements (MonaMedia abonnements, Le Vin en Bouche, etc.)
**À configurer** : par projet quand intégration prête

---

## ⚪ PLUS TARD — pas urgent

| Outil | Usage potentiel | Quand |
|-------|----------------|-------|
| Docker | Conteneurs pour déploiements complexes | Si Coolify/self-hosted |
| Go (Golang) | Services backend hautes perf | Si gros projet backend |
| Rust + Cargo | Outils bas niveau | Probable jamais |
| kubectl | Kubernetes | Si scale très important |
| Cursor | IDE alt à VS Code | Préférence personnelle |

---

## 📦 REPOS GITHUB À INSTALLER (skills additionnels)

À ajouter à `~/.claude/skills/` ou clonés ailleurs.

### Officiels Anthropic
1. **Frontend Design** (officiel) — `github.com/anthropics/claude-code` — empêche UI génériques
2. **Skill Creator** (officiel) — `github.com/anthropics/skills` — méta-skill création skills
3. **Security Review** (officiel) — `github.com/anthropics/claude-code-security-review`
4. **MCP Builder** (officiel) — `github.com/anthropics/claude-plugins-official`
5. **Researcher** — `github.com/altmbr/claude-research-skill`

### Communauté
6. **Self-Healing** — `github.com/pandnyr/self-healing-claude` — Claude corrige ses erreurs auto
7. **Superpowers** — `github.com/obra/superpowers` — TDD + plans + review
8. **Playwright Skill** — `github.com/lackeyjb/playwright-skill` — tests web
9. **SEO Geo** — `github.com/aaron-he-zhu/seo-geo-claude-skills` — 20 skills SEO/GEO
10. **SEO Machine** — `github.com/TheCraigHewitt/seomachine` — pipeline SEO 500K pages
11. **Marketing Skills** — `github.com/coreyhaines31/marketingskills` — 26 skills marketing
12. **Email Marketing Bible** — `github.com/CosmoBlk/email-marketing-bible` — 55K mots référence
13. **Context7** — `github.com/upstash/context7` — anti-hallucination doc
14. **Claude Mem** — `github.com/thedotmack/claude-mem` — mémoire persistante
15. **Excalidraw Diagram** — `github.com/coleam00/excalidraw-diagram-skill` — diagrammes

**⚠️ Règle** : on N'INSTALLE PAS tout. À chaque repo, on évalue avec GPT-5.5 :
- Utile ou doublon ?
- Risque ?
- Destination (Claude Studio / projet spécifique) ?

---

## 🔧 ORDRE D'EXÉCUTION RECOMMANDÉ

```
PHASE 1 (aujourd'hui ou demain) :
  1. Verrouillage mémoire (5 fichiers maîtres) ✅ FAIT
  2. Installation Python 3.12 + gh + ffmpeg
  3. Vérification Drive Desktop sync 100%

PHASE 2 (cette semaine) :
  4. Configuration HEYGEN_API_KEY
  5. Configuration ELEVENLABS_API_KEY
  6. Configuration SEMRUSH_API_KEY (vérifier quota)
  7. Configuration SURFER_API_KEY
  8. Test MCP surferseo dans Claude Code

PHASE 3 (semaines suivantes, projet par projet) :
  9. Choisir 1 projet pilote
  10. Remplir son PROJECT_CONTEXT.md
  11. Créer son brand kit
  12. Première production (article OU UGC selon projet)
  13. Itérer + valider workflow
  14. Dupliquer sur 2e projet

PHASE 4 (selon besoin) :
  15. Installer repos GitHub additionnels (1 par 1, validés)
  16. Configurer GitHub CLI + organisation
  17. Évaluer Zopia
  18. Décider outil publication RS définitif
```

---

## ⚠️ RÈGLES DE SÉCURITÉ POUR INSTALLATIONS

1. **Une installation à la fois** — pas de chaîne de commandes
2. **Vérifier la version après chaque install** — `xxx --version`
3. **Fermer/rouvrir PowerShell** après modif PATH ou env vars
4. **Pour les clés API** : utiliser `setx`, jamais coller dans un script
5. **Backup de `.claude.json`** avant toute modif config Claude Code
6. **Tester sur 1 projet** avant de généraliser
7. **Documenter** chaque install dans `DECISIONS_LOG.md`

---

## ✅ STATUT ACTUEL DES INSTALLATIONS

| Outil | Statut | Action |
|-------|--------|--------|
| Node.js v24 | ✅ Installé | - |
| npm v11 | ✅ Installé | - |
| Git 2.53 | ✅ Installé | - |
| Claude Code 2.1.119 | ✅ Installé + connecté Max | - |
| VS Code 1.117 | ✅ Installé | - |
| Remotion 4.0.434 | ✅ Installé global | - |
| Python | ❌ ABSENT | À installer URGENT |
| gh CLI | ❌ ABSENT | À installer |
| ffmpeg | ❌ ABSENT | À installer |
| GEMINI_API_KEY | ✅ Configurée | - |
| Autres clés API (18) | ❌ Absentes | Phase 2 |
