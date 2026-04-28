# RÈGLE OPS PERMANENTE — ASSETS + SKILLS FIRST

> **Statut** : règle permanente — s'applique à toute production de fichier dans tout projet MonaSwitch Studio.
> **Créée** : 2026-04-28
> **Phrase magique** : `"FAUTE SKILLS — reprends depuis la règle OPS Skills/Repos/MCP First"` → Claude Code annule, applique la règle, annonce le stack avant d'agir.

---

## TL;DR

**Avant toute production**, Claude Code doit (1) identifier le type de tâche, (2) scanner les assets du projet, (3) lire ce qui est utile, (4) choisir les skills/MCPs adaptés, (5) annoncer le stack proposé à Felix, puis seulement après → produire.

Cette règle empêche le piège classique : produire à blanc sans regarder ce qui existe déjà, et passer à côté de skills puissants déjà installés.

---

## 1. Identifier le type de tâche

Catégoriser parmi :
- **vidéo** (manifesto, reel, talking head, UGC, carrousel animé, ads vidéo)
- **image** (poster, ad creative, social post, mockup, thumbnail)
- **site** (landing page, app web, micro-site, dashboard)
- **social** (post, carrousel, série de captions, séquence éditoriale)
- **SEO** (article, page locale, optimisation existant)
- **présentation** (deck, pitch, rapport visuel)
- **ads** (audit, brief créa, copy, structure compte)
- **email** (séquence, single email, automation)
- **design** (système, charte, composant UI)
- **analyse vidéo/audio** (transcription, résumé, validation visuelle)

---

## 2. Scanner automatiquement les assets du projet

Avant de demander quoi que ce soit à Felix, scanner :

```bash
# Logos
find <projet>/04_ASSETS/logos -type f

# Images / mockups / refs
find <projet>/04_ASSETS/{images_finales,images_source,references_visuelles,avatars_heygen} -type f

# Vidéos brutes / frames
find <projet>/04_ASSETS/videos_brutes -type f
find <projet>/04_ASSETS/references_visuelles -name "*frames*" -type d

# Brief & contexte
ls <projet>/{HANDOFF_*.md,PROJECT_CONTEXT.md,_TRACKER.md,02_BRAND_KIT,03_STRATEGIE/PACKS_V2}

# Inputs bruts non encore triés
ls <projet>/_INBOX_A_TRIER 2>/dev/null
```

Cibles minimales du scan :
- logos
- images (photos, mockups, captures)
- vidéos (footage, refs)
- avatars HeyGen / Photo
- mockups produit / app / site
- documents de brief (HANDOFF, PROJECT_CONTEXT)
- mood-extract du projet
- brand kit (charte, palette, typo)
- packs déjà rédigés (V1 et V2)

---

## 3. Lire les assets utiles

- **Images importantes** → `Read` pour analyse visuelle (Claude Code lit les images nativement)
- **Vidéos** → extraire 3-8 frames clés via `ffmpeg -ss <t> -i <video> -frames:v 1 <out>.png` puis `Read`
- **Logo** → vérifier format (SVG/PNG transparent HD), couleurs, contraintes
- **Charte / brand kit** → lire le markdown
- **Vidéos de référence** → si disponible, utiliser `claude-video-vision` (à activer via `/setup-video-vision`) ou `video-use`

Ne jamais produire avant d'avoir lu les sources.

---

## 4. Utiliser les bons skills/repos/MCPs AVANT de produire

| Type de tâche | Skills / MCPs prioritaires |
|---|---|
| **Vidéo** | `claude-video-vision`, `hyperframes` (+ `gsap`, `hyperframes-cli`), `remotion-video`, `remotion-best-practices`, `ffmpeg`, `video-use`, `cinema-director` |
| **Image** | `gpt-image` / `gpt-image-1-5` (162 templates prompts), `enhance-prompt`, `cinematographer-ai`, `nano-banana-2` / `nano-banana-pro` (si Gemini API), `humanizer` |
| **Social** | `social-content`, `copywriting`, `humanizer`, `marketing-psychology`, `founder-viral-posts`, `skill-hook-generator`, `skill-script-builder` |
| **Site** | `frontend-design`, `framer-monamedia` MCP, `playwright-skill`, `tailwind-design-system`, `frontend-developer` |
| **SEO** | `surferseo` MCP, `seo-content-writer`, `ai-seo`, `geo-fundamentals`, `seo-keyword-strategist`, `seo-meta-optimizer` |
| **Ads** | `ads` (orchestrator), `ads-meta`, `ads-google`, `ads-tiktok`, `ads-linkedin`, `ad-creative`, `paid-social-creative-brief` |
| **Email** | `email-marketing-bible`, `email-sequence`, `cold-email`, `klaviyo-automation` |
| **Design** | `frontend-design`, `theme-factory`, `brand-guidelines`, `ui-ux-pro-max`, `design-spells` |
| **Analyse vidéo/audio** | `claude-video-vision`, `video-understand`, `notebooklm-skill`, `audio-transcriber` |

**Règle dure** : si un skill matche à 1 % à la tâche → l'invoquer via `Skill`. Cf. règle skills-first MonaSwitch.

---

## 5. Afficher AVANT action — bloc STACK PROPOSÉ

Format obligatoire (tout en haut de la réponse, avant tout outil) :

```
STACK PROPOSÉ :
- Assets utilisés        : <liste fichiers, avec chemins>
- Skills utilisés        : <liste skills>
- Repos/MCPs utilisés    : <liste MCPs ou repos cli>
- Outils externes        : <ffmpeg, npx hyperframes, etc.>
- Ce que je vais produire : <livrable + chemin de sortie attendu>
- Risques / limites      : <ce qui peut foirer ou être incomplet>
```

Felix peut alors valider, corriger ou enrichir le stack avant que la production commence.

---

## 6. Prendre initiative

- Proposer les meilleurs assets à utiliser **plutôt que d'attendre**
- Créer des **copies propres** dans les bons sous-dossiers (jamais déplacer les originaux bruts)
- Renommer **uniquement les nouveaux exports** selon la convention (section 7)
- **Ne jamais renommer/supprimer les originaux bruts sans validation Felix**
- Si un asset est de qualité limite (résolution, format), le mentionner et proposer une voie d'amélioration

---

## 7. Naming obligatoire des nouveaux fichiers

```
pack-J{numero}-{projet}-{format}-{version}.{ext}
```

Exemples valides :
- `pack-J2-monamedia-attention-man-v2.png`
- `pack-J1-monamedia-manifesto-v3.mp4`
- `pack-J5-consulting-energies-carrousel-v1.png`
- `pack-J3-monamedia-talking-head-v1.mp4`

**Slug rules** :
- Tout en lowercase, kebab-case, ASCII uniquement
- Pas d'espaces, pas d'accents, pas de caractères spéciaux
- Versions : `-v1`, `-v2`, `-v3` — jamais `-final`, `-final-final`, `-OK`, `-DEF`

---

## 8. Lien Drive public fourni par Felix

Si Felix donne un lien Drive public :
- **Le considérer comme source de vérité**
- Lister via MCP `google-drive` (déjà connecté) les fichiers disponibles
- Identifier ce qui est exploitable pour la tâche
- **Ne pas demander à Felix d'uploader** si le lien suffit
- Si certains fichiers manquent, l'indiquer après inventaire (pas avant)

---

## 9. Si quelque chose manque

- Dire **clairement ce qui manque** (nom du fichier/asset attendu)
- **Proposer une alternative immédiate** (ex : "Je peux générer un placeholder via `gpt-image`, ou utiliser le frame X de theFIVE")
- **Ne pas bloquer inutilement** — toujours proposer une voie d'avancement

---

## 10. Documents où cette règle est enregistrée

- ✅ `00_SYSTEM/04_INVENTAIRES/REGLE_OPS_ASSETS_SKILLS_FIRST.md` (ce fichier — référence canonique)
- ✅ `00_SYSTEM/06_TEMPLATES_PROJETS/TEMPLATE_PROJET_MASTER.md` (référence dans la section RÈGLE OPS 0)
- ✅ Le HANDOFF du projet actif (rappel par projet)
- ✅ `01_PROJETS/06-monamedia/HANDOFF_MONAMEDIA_PRODUCTION.md`

---

## 11. _TRACKER.md

Toute application notable de la règle (et toute infraction corrigée via "phrase magique") doit être loggée dans `_TRACKER.md` du projet concerné.

---

## 11 bis. EXCEPTION — règle allégée

La règle peut être **allégée** pour :
- Rédaction simple `< 500 tokens` (typo, micro-message, phrase de notes)
- **Question factuelle** (ex : "quel skill pour X ?", "où est rangé le logo ?")
- **Réponse rapide sans production de fichier** (audit en lecture, lookup, debug verbal)

Dans ces cas, Claude Code peut **skipper le scan + le bloc STACK complet** et répondre directement.

**Mais** pour TOUTE production de fichier (image, vidéo, site, document, ad, code applicatif livré au client) → la règle s'applique **intégralement**, sans dérogation.

---

## Phrase magique

```
FAUTE SKILLS — reprends depuis la règle OPS Skills/Repos/MCP First
```

Quand Felix prononce cette phrase :
1. Claude Code **annule l'action en cours**
2. Revient à l'ordre du brief
3. **Applique la règle complète** (étapes 1 à 5)
4. **Annonce le stack proposé** avant d'agir
5. Logue l'événement dans `_TRACKER.md` du projet
