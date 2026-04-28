# MONASWITCH STUDIO — MAPPING FORMATS × OUTILS

> **Le fichier le plus important du Studio.**
> Pour chaque format de production, voici exactement quels skills, agents, MCPs et outils utiliser.
> À consulter **avant chaque création** par Claude Code, Claude.ai, et GPT-5.5.

**Version** : 1.0 — 2026-04-26
**Statut** : Initial — à enrichir au fur et à mesure des productions

---

## 📋 SOMMAIRE

1. [Article SEO (FR/EN)](#1-article-seo-frenseo-aeo-geo)
2. [Carrousel Instagram](#2-carrousel-instagram)
3. [Vidéo UGC (HeyGen + avatar)](#3-vidéo-ugc-heygen--avatar)
4. [Vidéo cinématique](#4-vidéo-cinématique)
5. [Reel / Short vertical](#5-reel--short-vertical)
6. [Landing page premium (Claude Design)](#6-landing-page-premium-claude-design)
7. [Page SEO programmatique (en masse)](#7-page-seo-programmatique-en-masse)
8. [Campagne SEA (Google Ads / Meta Ads)](#8-campagne-sea-google-ads--meta-ads)
9. [Email cold outreach](#9-email-cold-outreach)
10. [Audit concurrent](#10-audit-concurrent)
11. [Design system](#11-design-system)
12. [Export Remotion multi-format](#12-export-remotion-multi-format)

---

## 1. Article SEO (FR/EN/SEO + AEO + GEO)

### 🎯 Skills Claude Code à utiliser
- `seo-content-writer` (rédaction principale)
- `seo-keyword-strategist` (analyse KW)
- `seo-content-planner` (plan éditorial)
- `seo-meta-optimizer` (titles + meta descriptions)
- `seo-structure-architect` (architecture article)
- `seo-snippet-hunter` (formatage featured snippets)
- `schema-markup` (JSON-LD structured data)
- `humanizer` (anti-IA, naturalité)
- `avoid-ai-writing` (style naturel dès le départ)
- `ai-seo` (optimisation pour moteurs IA)
- `geo-fundamentals` (Generative Engine Optimization)
- `programmatic-seo` (si production en masse)
- `local-legal-seo-audit` (si SEO local)

### 🤖 Agents à invoquer
- `monaswitch-content-factory` (production article 1800+ mots)
- `seo-content` (audit qualité E-E-A-T)
- `seo-schema` (génération JSON-LD)
- `monaswitch-seo-optimizer` (scoring SurferSEO + publication)
- `monaswitch-wp-publisher` (publication WordPress)

### 🔌 MCPs à utiliser
- `surferseo` (scoring contenu, objectif 65+)
- `semrush` (KW research, positions) [API à configurer]
- `google-drive` (sauvegarde brouillons)

### 🛠 Outils externes
- SurferSEO interface (Content Editor pour aller plus loin que l'API)
- SEMrush interface (analyse SERP)
- WordPress (publication finale)

### 📋 Workflow standard
1. **Stratégie** : `seo-keyword-strategist` → KW principal + termes NLP + concurrents SERP
2. **Plan** : `seo-content-planner` → outline H2/H3, intentions de recherche
3. **Rédaction** : `monaswitch-content-factory` → article 1800+ mots avec termes NLP
4. **Naturalité** : `humanizer` → réécriture pour passer comme humain
5. **Métadonnées** : `seo-meta-optimizer` → title (60c) + meta (155c)
6. **Schema** : `seo-schema` agent → JSON-LD (Article, Author, etc.)
7. **Featured snippets** : `seo-snippet-hunter` → tableaux + listes pour position 0
8. **Scoring** : MCP `surferseo` → vérifier score 65+
9. **Publication** : `monaswitch-wp-publisher` → WP en draft

### 📁 Rangement dans le projet
```
01_PROJETS/{projet}/05_PRODUCTION/articles_blog/
├── {date}-{slug}-fr.md (rédaction)
├── {date}-{slug}-fr-final.md (après humanizer)
└── {date}-{slug}-fr-published.md (après publication)
```

### ✅ Checklist QA
- [ ] Score SurferSEO > 65
- [ ] Termes NLP couverts (≥80%)
- [ ] Schema.org JSON-LD valide (Schema Markup Validator)
- [ ] Pas de phrase IA détectée (humanizer pass)
- [ ] Maillage interne (3+ liens internes)
- [ ] Image hero + alt text
- [ ] Title < 60 chars, meta < 155 chars
- [ ] H1 unique, H2/H3 hiérarchisés

---

## 2. Carrousel Instagram

### 🎯 Skills à utiliser
- `social-content` (création posts)
- `social-orchestrator` (calendrier éditorial)
- `copywriting` (hooks + captions)
- `humanizer` (pour la caption seulement, pas le visuel)
- `visual-style` (cohérence visuelle)
- `frontend-design` (templates Claude Design)
- `nano-banana-pro-prompts-recommend-skill` (prompts visuels)

### 🤖 Agents
- `content-marketer` (stratégie carrousel)

### 🔌 MCPs
- `gemini-ai` (génération images via Imagen)
- `pencil` (design templates)

### 🛠 Outils externes
- Nano Banana / Flow (génération visuels gratuits)
- Claude Design (templates carrousel)
- Canva (alternative)

### 📋 Workflow
1. Stratégie : `social-orchestrator` → angle du carrousel + hook
2. Script : 5-10 slides avec `copywriting` (1 idée par slide)
3. Visuels : prompts via `nano-banana-pro-prompts-recommend-skill` → générer dans Flow
4. Design : Claude Design avec template carrousel ou Pencil MCP
5. Caption : `humanizer` + hashtags optimisés
6. Export : 1080×1350 (4:5) ou 1080×1080 (1:1)

### 📁 Rangement
```
01_PROJETS/{projet}/05_PRODUCTION/carrousels/
├── {date}-{thème}/
│   ├── 01-hook.png
│   ├── 02-slide.png
│   ├── ...
│   ├── 10-cta.png
│   └── caption.md
```

---

## 3. Vidéo UGC (HeyGen + avatar)

### 🎯 Skills
- `cinematographer-ai` (direction technique)
- `enhance-prompt` (optimisation prompts visuels)
- `ad-creative` (concepts pub)
- `copywriting` (script script)
- `humanizer` (script naturel)
- `audio-transcriber` (sous-titres auto)
- `remotion` / `remotion-best-practices` / `remotion-video` (montage)

### 🤖 Agents
- `monaswitch-content-factory` (script complet)

### 🔌 MCPs
- `gemini-ai` (background images)

### 🛠 Outils externes (CRITIQUES)
- **HeyGen Enterprise** (avatar parlant) [API à configurer]
- **ElevenLabs** (voix Nicolas) [API à configurer]
- Flow / Nano Banana (images backgrounds)
- Seedance / Kling (animation backgrounds)
- Remotion 4.0.434 (montage final)
- ffmpeg [À INSTALLER] (encodage)

### 📋 Workflow
1. **Script** (FR/EN) avec `copywriting` + `humanizer` (60s ou 30s)
2. **Voix** : ElevenLabs avec voix Nicolas (stability 0.50)
3. **Avatar** : HeyGen avec script + voix → MP4 du gars qui parle
4. **Backgrounds** : prompts `cinematographer-ai` + `enhance-prompt` → Flow / Nano Banana
5. **Animations** : images → Seedance/Kling → vidéo loop
6. **Montage** : Remotion (composant HeyGenPresenter) → contenu animé en haut, sous-titres, avatar en bas
7. **Sous-titres** : `audio-transcriber` → fichier .srt → injection Remotion
8. **Export** : 9:16 (Reels/TikTok) + 1:1 (IG feed) + 16:9 (YouTube)

### 📁 Rangement
```
01_PROJETS/{projet}/05_PRODUCTION/ugc/
├── {date}-{titre}/
│   ├── 01_script.md
│   ├── 02_voice.mp3 (ElevenLabs)
│   ├── 03_avatar.mp4 (HeyGen)
│   ├── 04_backgrounds/ (images Flow)
│   ├── 05_clips/ (Seedance/Kling)
│   └── 06_remotion/ (composant)
│
01_PROJETS/{projet}/06_EXPORTS/9x16/
├── {date}-{titre}.mp4
01_PROJETS/{projet}/06_EXPORTS/1x1/
├── {date}-{titre}.mp4
01_PROJETS/{projet}/06_EXPORTS/16x9/
├── {date}-{titre}.mp4
```

### ✅ Checklist QA
- [ ] Script humanisé (passage humanizer)
- [ ] Voix Nicolas reconnaissable
- [ ] Sous-titres synchronisés
- [ ] Pas de coupure brutale dans le loop
- [ ] 3 formats exportés
- [ ] Hook puissant dans les 3 premières secondes
- [ ] CTA clair en fin

---

## 4. Vidéo cinématique

### 🎯 Skills
- `cinematographer-ai` (direction artistique cinéma)
- `enhance-prompt` (prompts haut de gamme)
- `algorithmic-art` (effets visuels)
- `magic-animator` (animations IA)
- `remotion`

### 🛠 Outils externes
- Higgsfield (clips cinématiques haute qualité)
- Seedance / Kling 3.0 (animation premium)
- ElevenLabs (voix off + musique flows)
- Flow (background scenes)

### 📋 Workflow
1. **Storyboard** : direction artistique avec `cinematographer-ai` (focal length, mouvements caméra, éclairage)
2. **Start frames** : générer images 8K avec prompts cinéma (Flow / Nano Banana / Higgsfield)
3. **Animation** : Higgsfield ou Seedance → clips cinématiques
4. **Voice over** : ElevenLabs (voix grave/dramatique selon ton)
5. **Musique** : ElevenLabs Flows ou banque libre
6. **Montage** : Remotion avec transitions cinéma
7. **Color grading** : effets dans Remotion ou DaVinci Resolve

### 📁 Rangement
```
01_PROJETS/{projet}/05_PRODUCTION/cinematic/
├── {date}-{titre}/
│   ├── 01_storyboard.md
│   ├── 02_start_frames/
│   ├── 03_clips/ (Higgsfield/Seedance)
│   ├── 04_voice.mp3
│   ├── 05_music.mp3
│   └── 06_remotion/
```

---

## 5. Reel / Short vertical

### 🎯 Skills
- `social-content` (script Reel/Short)
- `copywriting` (hook 3s)
- `humanizer` (caption)
- `audio-transcriber` (sous-titres dynamiques)
- `remotion` (montage)

### 🛠 Outils externes
- HeyGen (si avatar parle)
- ElevenLabs (voix)
- Flow / Seedance (backgrounds)
- CreaShorts (alternative auto)

### 📋 Workflow rapide
1. Hook 3s + script 30-60s (`copywriting` + `humanizer`)
2. Voix ElevenLabs OU avatar HeyGen
3. Backgrounds dynamiques Flow/Seedance
4. Sous-titres mot-par-mot avec `audio-transcriber`
5. Montage Remotion (composant ReelTemplate)
6. Export 9:16 (1080×1920)

### 📁 Rangement
```
01_PROJETS/{projet}/05_PRODUCTION/reels_shorts/
└── {date}-{titre}/
01_PROJETS/{projet}/06_EXPORTS/9x16/
└── {date}-{titre}-reel.mp4
```

---

## 6. Landing page premium (Claude Design)

### 🎯 Skills
- `frontend-design` (officiel Anthropic)
- `web-design-guidelines`
- `shadcn-ui`
- `tailwind-design-system`
- `tailwind-patterns`
- `design-spells` (micro-interactions)
- `scroll-experience`
- `3d-web-experience` (si 3D)
- `threejs-skills`
- `animejs-animation`
- `magic-ui-generator`
- `theme-factory`
- `copywriting` (textes vente)
- `marketing-psychology` (leviers persuasion)
- `page-cro` (optimisation conversion)

### 🤖 Agents
- `frontend-developer`

### 🔌 MCPs
- `stitch` (UI components)
- `pencil` (design system)

### 🛠 Outils externes
- **Claude Design** (claude.ai/design — outil principal)
- Figma (design system source)
- Vercel (déploiement)
- Nano Banana / Flow (visuels)
- Seedance / Kling (vidéos backgrounds)

### 📋 Workflow (basé sur le guide Abdé Chan)
1. **Inspiration** : MotionSize.ai (typo + backgrounds gratuits) + Dribbble + Pinterest
2. **Design system** : Claude Design avec brand kit du projet
3. **Génération images custom** : Flow / Nano Banana 2 (8K)
4. **Animation** : Seedance/Kling pour backgrounds vidéo loop
5. **Build** : Claude Design → générer site complet avec vidéos custom remplaçant placeholders
6. **Sections** : itérer Hero → Features → Testimonials → Pricing → CTA
7. **Mobile** : vérifier responsive sous 768px
8. **Liquid glass** : appliquer style premium (rules dans `design-spells`)
9. **Export code** : Claude Design → Cursor / VS Code pour fine-tuning
10. **Tracking** : Pixel Meta + GA4 + UTM hidden fields
11. **Déploiement** : Vercel ou Netlify

### 📁 Rangement
```
01_PROJETS/{projet}/05_PRODUCTION/site/
├── design-system/
├── inspirations/ (screenshots)
├── assets/ (images custom + vidéos backgrounds)
├── code/ (export Claude Design)
└── deployed-url.txt
```

### ✅ Checklist QA
- [ ] Charge < 2s
- [ ] Hover et scroll fluides
- [ ] Mobile testé (vrai iPhone + Android)
- [ ] CTA visible above the fold
- [ ] Cohérence visuelle (palette, typo, cards)
- [ ] Formulaire testé (soumission OK)
- [ ] Tracking actif (UTM + GA4 + pixel)

---

## 7. Page SEO programmatique (en masse)

### 🎯 Skills
- `programmatic-seo`
- `seo-structure-architect`
- `seo-content-writer`
- `schema-markup`
- `seo-meta-optimizer`
- `frontend-design`

### 🤖 Agents
- `monaswitch-content-factory` (génération en masse)

### 📋 Workflow
1. Données source (CSV / API) : ex. liste villes, services, niches
2. Template avec variables (`{ville}`, `{service}`)
3. Génération en masse via script Python OU `monaswitch-content-factory`
4. Schema.org auto par page
5. Sitemap XML auto
6. Maillage interne automatique
7. Publication batch (WordPress / Framer)

→ Use case : pages "Casse auto à {ville}" pour 200 villes

---

## 8. Campagne SEA (Google Ads / Meta Ads)

### 🎯 Skills
- `paid-ads`
- `paid-ad-copy-adapter`
- `paid-social-creative-brief`
- `ad-creative`
- `marketing-psychology`
- `competitive-landscape`
- `analytics-tracking`

### 🛠 Outils externes
- Google Ads Manager
- Meta Ads Manager
- GA4 + GTM (tracking)

### 📋 Workflow
1. Audience + KW research (`paid-ads`, MCP semrush si dispo)
2. Brief créatif (`paid-social-creative-brief`)
3. 10 variantes textes (`ad-creative`)
4. Visuels (Flow / Nano Banana / Canva)
5. Landing page dédiée (voir format 6)
6. Tracking GTM/GA4 + UTM
7. Lancement + optimisation J+3 / J+7

---

## 9. Email cold outreach

### 🎯 Skills
- `cold-email`
- `email-sequence`
- `email-marketing-bible`
- `humanizer`
- `marketing-psychology`

### 🛠 Outils externes
- SmartLead (envoi automatisé)
- Mailpool (délivrabilité)
- Gmail (manuel)

### 📋 Workflow
1. ICP defined dans PROJECT_CONTEXT
2. Liste prospects qualifiés (MCP firecrawl si dispo, ou scrape manuel)
3. Séquence 3-5 emails (`cold-email`)
4. Personnalisation par variable
5. A/B test subject lines
6. Tracking ouvertures + clics

---

## 10. Audit concurrent

### 🎯 Skills
- `competitor-alternatives`
- `competitive-landscape`
- `apify-competitor-intelligence`
- `apify-brand-reputation-monitoring`
- `seo-audit`
- `firecrawl-scrape`

### 🛠 Outils externes
- SEMrush (positions concurrents)
- SurferSEO (gap content)
- Apify (scraping)

### 📋 Workflow
1. Lister 3-5 concurrents principaux
2. Audit SEO (`seo-audit`, MCP semrush)
3. Audit contenu (gap analysis SurferSEO)
4. Audit RS (apify pour scraping followers/posts)
5. Tableau comparatif → opportunités

---

## 11. Design system

### 🎯 Skills
- `frontend-design`
- `tailwind-design-system`
- `web-design-guidelines`
- `theme-factory`
- `brand-guidelines`
- `shadcn-ui`

### 🛠 Outils externes
- Figma (source)
- Stitch MCP
- Claude Design

### 📋 Workflow
1. Brand kit projet → couleurs, fonts, ton
2. Création design system avec `theme-factory` + `frontend-design`
3. Composants : boutons, cards, formulaires (shadcn-ui base)
4. Style guide visuel
5. Application à tous les écrans

### 📁 Rangement
```
01_PROJETS/{projet}/02_BRAND_KIT/
├── colors.json
├── typography.json
├── design-system.fig (Figma)
└── style-guide.md
```

---

## 12. Export Remotion multi-format

### 🎯 Skills
- `remotion`
- `remotion-best-practices`
- `remotion-video`

### 🛠 Outils
- Remotion 4.0.434 (déjà installé global)
- ffmpeg [À INSTALLER]

### 📋 Workflow
1. Composant Remotion (`<HeyGenPresenter />`, `<ReelTemplate />`, etc.)
2. Configuration 3 compositions :
   - `MyVideo9x16` (1080×1920) — Reels/TikTok
   - `MyVideo1x1` (1080×1080) — IG feed
   - `MyVideo16x9` (1920×1080) — YouTube
3. Render avec `npx remotion render` pour chaque composition
4. Output dans `06_EXPORTS/{ratio}/`

### Commande type
```bash
npx remotion render src/index.ts MyVideo9x16 out/video-9x16.mp4
npx remotion render src/index.ts MyVideo1x1 out/video-1x1.mp4
npx remotion render src/index.ts MyVideo16x9 out/video-16x9.mp4
```

---

## 🔄 PROCHAINES ÉVOLUTIONS DE CE FICHIER

À ajouter au fur et à mesure :
- Format Podcast (avec `podcast-generation`, NotebookLM, ElevenLabs)
- Format Newsletter / Email marketing
- Format Lead magnet (ebook, checklist, guide)
- Format Webinaire / formation
- Format Stories Instagram/Facebook
- Format YouTube long format
- Format Pages e-commerce produit (Shopify)
- Format Article LinkedIn long format
- Format Posts Twitter/X
- Format Threads viraux

---

## 📌 RÈGLE IMPORTANTE

À chaque création, **Claude Code et GPT-5.5 doivent consulter ce fichier** pour utiliser les bons outils.

Si un format n'est pas listé → ajouter une section nouvelle ici APRÈS la première production réussie.
