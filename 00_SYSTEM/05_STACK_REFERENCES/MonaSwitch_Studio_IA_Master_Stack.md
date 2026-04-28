# MonaSwitch / Studio IA — Fichier Maître Stack, Workflows & Installation

Version : 2026-04-26  
Objectif : centraliser toutes les briques, outils, skills, workflows, règles de sécurité et priorités évoqués pour construire le système MonaSwitch, FLAAK, Ecocasse et les autres projets du studio.

---

## 0. Vision générale

MonaSwitch doit devenir un studio de création et d’acquisition IA capable de produire vite et proprement :

- sites premium animés ;
- landing pages de conversion ;
- publicités Meta / Google / LinkedIn ;
- vidéos IA / motion design / fake 3D scroll ;
- automatisations CRM / WhatsApp / e-commerce ;
- audits SEO / Ads / CMS ;
- workflows Claude Code / Codex / Gemini ;
- routines automatisées ;
- agents spécialisés ;
- systèmes clients scalables.

Le but n’est pas d’installer 200 outils pour faire joli. Le but est de créer un système opérationnel qui permet de :

1. faire rentrer du cash rapidement ;
2. produire des livrables premium ;
3. réduire le temps perdu ;
4. sécuriser les API, MCP, clés et données sensibles ;
5. coordonner 24 projets sans chaos ;
6. créer une méthode MonaSwitch duplicable pour clients.

---

## 1. Règle centrale

Toutes les briques doivent suivre cette règle :

> Audit d’abord. Installation ensuite. Connexion API en dernier. Production réelle uniquement après validation humaine.

Interdictions par défaut :

- ne jamais connecter une API sensible sans validation ;
- ne jamais lancer une génération payante sans estimation du coût ;
- ne jamais modifier prix, stock, commandes, campagnes Ads ou produits e-commerce sans validation explicite ;
- ne jamais uploader d’images sensibles FLAAK/patients/prospects dans un outil tiers sans validation ;
- ne jamais activer un agent autonome sur un projet réel avant test sandbox ;
- ne jamais installer une grosse bibliothèque complète sans sélectionner les skills utiles ;
- ne jamais laisser Claude/Codex modifier un projet existant sans backup.

---

## 2. Architecture mentale du système

### 2.1 Rôle des IA principales

**ChatGPT / GPT-5.5**
- cockpit stratégique ;
- formulation parfaite des prompts ;
- arbitrage entre outils ;
- relecture des réponses Claude/Codex/Gemini ;
- stratégie business / cash ;
- structuration des offres ;
- contrôle qualité marketing, technique et juridique ;
- création des prompts à donner aux autres agents.

**Claude Code**
- exécution technique ;
- modification de code ;
- installation skills/MCP ;
- tests ;
- scripts ;
- sites ;
- automatisations ;
- intégrations.

**Claude Code Desktop**
- cockpit visuel Claude Code ;
- gestion multi-sessions ;
- preview ;
- diffs ;
- terminal intégré ;
- routines ;
- organisation de projets.

**Claude Design**
- design system ;
- maquettes ;
- sites animés ;
- apps / dashboards ;
- export vers Claude Code.

**Claude Cowork**
- réflexion collaborative ;
- coordination ;
- travail guidé sur projets longs.

**Codex**
- deuxième agent de code ;
- contrôle croisé ;
- correction technique ;
- génération alternative ;
- audit de code ;
- sécurité / robustesse.

**Gemini**
- complément recherche / vision / analyse ;
- comparaison d’approches ;
- potentiel pour analyse documentaire / multimodale.

**Management Agent**
- suivi des tâches ;
- priorisation ;
- découpage des projets ;
- point quotidien ;
- coordination collaborateurs.

---

## 3. Priorités business

### Priorité immédiate : cash

Objectif : vendre rapidement des offres simples et concrètes.

Offres recommandées :

1. **Audit IA / Site / Ads Express**
   - prix possible : 290 € à 790 € ;
   - livrable : rapport + quick wins + plan 7 jours.

2. **Pack Landing + WhatsApp**
   - prix possible : 990 € à 1 990 € ;
   - livrable : landing page + CTA WhatsApp + tracking simple.

3. **Pack Ads IA**
   - prix possible : 390 € à 990 € ;
   - livrable : 20 à 30 visuels ads + hooks + angles.

4. **Pack Optimisation SEO E-commerce IA**
   - prix possible : 590 € à 2 500 € selon volume ;
   - plateformes : Shopify / WordPress / PrestaShop.

5. **Site Premium + Acquisition**
   - prix possible : 3 500 € à 7 500 € ;
   - livrable : site premium + tracking + CRM + relance.

6. **Infrastructure IA de croissance**
   - setup : 7 500 € à 15 000 € ;
   - mensuel : 1 500 € à 4 000 € ;
   - livrable : site + ads + créas + CRM + booking/qualification + reporting.

---

## 4. Catégories de briques

### Catégorie A — Cockpit et exécution

#### 4.1 Claude Code Desktop

Lien officiel :
https://code.claude.com/docs/en/desktop

Rôle :
- interface graphique pour Claude Code ;
- sessions côte à côte ;
- terminal intégré ;
- diff visuel ;
- preview ;
- routines ;
- gestion projets.

Priorité : A

Utilité :
- très utile pour 24 projets ;
- meilleur que terminal seul pour gérer plusieurs dossiers ;
- bon cockpit pour MonaSwitch, FLAAK, Ecocasse.

Windows :
- installer Claude Desktop / Claude Code Desktop depuis source officielle ;
- installer Git for Windows ;
- redémarrer l’app ;
- utiliser l’onglet Code.

Règles :
- commencer avec dossier sandbox ;
- ne pas connecter toutes les API ;
- routines en lecture seule au départ.

---

#### 4.2 Claude Code Routines

Docs :
https://code.claude.com/docs/en/routines  
https://claude.com/blog/introducing-routines-in-claude-code

Rôle :
- tâches Claude Code automatisées ;
- exécution cloud ;
- planning ;
- API ;
- événements GitHub ;
- sans ordinateur allumé si Remote.

Priorité : A

À noter dans le système :
Les routines permettent de surveiller, auditer, résumer, tester et prioriser automatiquement les projets.

Premières routines à créer plus tard :

1. **Daily MonaSwitch Control Tower**
   - rapport quotidien ;
   - P1/P2/P3 ;
   - blocages ;
   - cash ;
   - prochaines actions.

2. **Weekly FLAAK Review**
   - landing page ;
   - conformité ;
   - FAQ ;
   - WhatsApp ;
   - idées ads.

3. **Ecocasse MVP Review**
   - dette technique ;
   - features MVP ;
   - bugs ;
   - tests ;
   - priorités.

4. **Weekly CMS SEO Audit**
   - Shopify / WordPress / PrestaShop ;
   - metas ;
   - produits ;
   - pages ;
   - alt text.

5. **PR Safety Review**
   - à chaque PR GitHub ;
   - risques ;
   - tests ;
   - sécurité ;
   - résumé ;
   - aucune fusion automatique.

Règle :
- lecture seule au départ ;
- aucune modification sans validation humaine.

Prompt routine type :

```text
Routine : Daily MonaSwitch Control Tower

Chaque matin à 8h30, analyse les projets MonaSwitch disponibles.

Règles :
- Lecture seule.
- Ne modifie aucun fichier.
- Ne lance aucune génération payante.
- Ne connecte aucune API.
- Ne touche pas aux clés, comptes clients, Ads, CRM ou données sensibles.
- Ne crée pas de PR.
- Ne push rien.

Analyse :
1. MonaSwitch site
2. FLAAK landing
3. Ecocasse app
4. Creative Factory
5. Fichier maître stack/outils

Rapport attendu :
1. Résumé général en 10 lignes
2. État par projet
3. Blocages critiques
4. Tâches P1 cash
5. Tâches P2 importantes
6. Tâches P3 plus tard
7. Ce dont tu as besoin pour avancer
8. Prochaine action recommandée
```

---

#### 4.3 cc-switch

Lien :
https://github.com/farion1231/cc-switch

Rôle :
- panneau de contrôle local pour plusieurs CLIs IA ;
- Claude Code, Codex, Gemini CLI, OpenCode, OpenClaw ;
- gestion providers, MCP, skills, prompts, configs.

Priorité : B+ / A- quand plusieurs CLIs seront actives.

Utilité :
- réduire le chaos technique ;
- éviter plusieurs fichiers de config dispersés ;
- centraliser certains réglages.

Risque :
- accès configs et clés ;
- app desktop sensible ;
- audit obligatoire ;
- ne pas synchroniser clés via cloud sans validation.

---

### Catégorie B — Sites premium, design, UI

#### 4.4 Claude Design

Lien :
https://claude.ai/design

Rôle :
- design system ;
- app design ;
- site animé ;
- conversion doc → support ;
- export vers Claude Code.

Priorité : A

Usage :
- MonaSwitch ;
- FLAAK ;
- Ecocasse ;
- dashboards ;
- sites clients ;
- supports commerciaux.

Règle :
Toujours fournir un brief business avant génération :
- objectif ;
- cible ;
- offre ;
- CTA ;
- pages ;
- style ;
- contraintes ;
- contenus ;
- assets ;
- conformité.

Prompt de base :

```text
Utilise le design system importé comme base visuelle, mais adapte-le fortement au projet.

Projet :
[Nom]

Objectif :
[Demande WhatsApp / RDV / démo / vente / inscription]

Cible :
[Client idéal]

Pages/écrans :
[Liste]

Style :
Premium, cohérent, non générique, adapté à la marque.

Avant de générer, propose :
1. direction artistique ;
2. structure ;
3. sections ;
4. assets nécessaires ;
5. éléments manquants.
```

---

#### 4.5 Awesome Claude Design

Lien :
https://github.com/VoltAgent/awesome-claude-design

Rôle :
- bibliothèque de design systems `DESIGN.md` pour Claude Design.

Priorité : A-

Usage :
- importer un design system ;
- éviter les designs génériques ;
- donner une direction artistique à Claude Design.

Projets :
- MonaSwitch : SaaS premium / dark glass / agency tech ;
- FLAAK : luxury medical / beauty clinic / editorial premium ;
- Ecocasse : SaaS dashboard / agent platform / clean admin ;
- immobilier : luxury real estate / cinematic editorial.

Règle :
- utiliser comme base/inspiration ;
- ne pas copier une identité existante ;
- adapter couleurs, wording, composants.

---

#### 4.6 Awesome DESIGN.md

Lien :
https://github.com/VoltAgent/awesome-design-md

Rôle :
- bibliothèque de fichiers DESIGN.md plus large pour agents/design systems.

Priorité : B+

Usage :
- complément à awesome-claude-design ;
- utile avec Stitch / Claude Code / agents.

---

#### 4.7 Google Stitch Skills

Lien :
https://github.com/google-labs-code/stitch-skills

Rôle :
- création de design systems ;
- pages ;
- écrans ;
- conversion React ;
- skills : design-md, stitch-design, stitch-loop, react-components, shadcn-ui, remotion.

Priorité : A-

Usage :
- sites MonaSwitch ;
- landing FLAAK ;
- app Ecocasse ;
- sites clients ;
- génération de SITE.md + DESIGN.md.

Workflow recommandé :
1. ChatGPT prépare brief business.
2. Claude Code génère DESIGN.md et SITE.md.
3. Stitch produit écrans/pages.
4. React components convertissent.
5. Claude Code/Codex finalisent.
6. Playwright teste.

---

#### 4.8 Frontend Design Skill

Source :
Anthropic / Claude Code skills.

Rôle :
- empêcher Claude de produire des UI génériques ;
- renforcer qualité design.

Priorité : A+

Usage :
- tous les sites ;
- apps ;
- dashboards ;
- landing pages.

---

#### 4.9 Méga-prompt One-Shot Cinematic Landing Page / Video Scroll-Scrub

Statut :
- pas de repo officiel identifié ;
- prompt/template privé/viral ;
- technique réelle.

Rôle :
- landing page premium cinématique ;
- scroll-scrub vidéo via canvas frame sequence ;
- Vite + React + TypeScript ;
- Tailwind v4 ;
- shadcn ;
- Framer Motion ;
- liquid glass ;
- sections marketing.

Priorité : A- pour démos premium / fake 3D.

Technique :
- vidéo source 5–15 s ;
- extraction en frames JPG/WebP avec ffmpeg ;
- canvas affiche la frame selon le scroll.

Usage :
- MonaSwitch : écosystème digital qui se construit au scroll ;
- FLAAK : regard / nuances / consultation ;
- Ecocasse : chat IA / workflows / dashboard.

Risque :
- lourd si trop de frames ;
- Tailwind v4 / shadcn peut nécessiter corrections ;
- one-shot rarement parfait ;
- performance mobile à surveiller.

Règle :
- utiliser comme template technique ;
- adapter brief, contenus, vidéo source et CTA ;
- tester build et mobile ;
- optimiser WebP ;
- ne pas dépasser poids raisonnable.

---

#### 4.10 Emergent Fake 3D Scroll Website Kit

Statut :
- pas de GitHub public identifié ;
- ressource privée / ZIP / kit Emergent.

Rôle :
- fake 3D website ;
- vidéo IA + scroll + UI superposée ;
- donne illusion 3D sans vraie 3D.

Priorité : B+ / A- si le ZIP est disponible.

Usage :
- démos MonaSwitch ;
- landing FLAAK ;
- site Ecocasse ;
- sites premium clients.

Risque :
- dépendance Emergent ;
- export code à vérifier ;
- qualité 50–80 % puis raffinage ;
- coût éventuel Emergent/MAXX/Claude Opus.

---

### Catégorie C — Vidéo, images, ads créatives

#### 4.11 GPT Image 2 Skill

Lien :
https://github.com/wuyoscar/gpt_image_2_skill

Rôle :
- génération d’ads statiques en batch ;
- visuels Meta ;
- mockups ;
- posters ;
- brand systems ;
- assets landing pages.

Priorité : A

Usage :
- MonaSwitch ads ;
- FLAAK ads ;
- carrousels ;
- créas clients.

Règle :
- générer d’abord concepts ;
- validation humaine ;
- batch limité ;
- coût estimé avant génération.

---

#### 4.12 Agent Skills / GPT Image 1.5 alternative

Lien :
https://github.com/intellectronica/agent-skills

Rôle :
- alternative image ;
- utile notamment si besoin de transparence/logos/icônes selon modèle.

Priorité : B

---

#### 4.13 Seedance / Higgsfield Workflow

Rôle :
- génération vidéo IA ;
- hooks social ;
- vidéos premium ;
- UGC ;
- vidéos landing ;
- formats 9:16, 16:9, 1:1.

Priorité : A-

Workflow :
1. ChatGPT définit stratégie et angle.
2. Claude Code génère prompts Seedance.
3. Higgsfield/Seedance génère vidéos.
4. ChatGPT analyse et crée variantes.
5. video-use ou Hyperframes monte/assemble si nécessaire.

Règles :
- aucune génération payante sans validation ;
- maximum 3 vidéos test au départ ;
- pas de données sensibles ;
- pas d’image patient FLAAK sans validation.

Prompt standard :

```text
Prépare 5 concepts vidéo sans générer.

Pour chaque concept :
- angle marketing ;
- skill ou modèle recommandé ;
- durée ;
- hook ;
- scène ;
- mouvement caméra ;
- texte écran ;
- CTA ;
- risque ;
- prompt prêt à coller.

Ne génère rien avant validation.
```

---

#### 4.14 Claude + Higgsfield + Playwright MCP Pipeline

Rôle :
- Claude Code pilote Higgsfield dans le navigateur ;
- Playwright MCP clique, remplit prompts, récupère outputs ;
- Seedance skills structurent les vidéos.

Priorité : A- pour créa vidéo.

Attention :
- “unlimited” est marketing ;
- dépend crédits Higgsfield / Seedance ;
- pas totalement autonome au départ.

Règle :
Pipeline semi-autonome contrôlé :
- plan only ;
- validation ;
- génération limitée ;
- rapport final ;
- aucun batch illimité.

---

#### 4.15 Claude Video Vision

Lien :
https://github.com/jordanrendric/claude-video-vision

Rôle :
- donne à Claude Code capacité d’analyser vidéo ;
- extraction frames + transcription audio ;
- compréhension hook, rythme, texte écran, structure.

Priorité : A-

Usage :
- analyser pubs qui marchent ;
- reverse engineering créatif ;
- comprendre vidéos concurrentes ;
- transformer en brief original.

Règle :
- s’inspirer, ne pas copier ;
- analyser structure, pas identité.

---

#### 4.16 video-use

Lien :
https://github.com/browser-use/video-use

Rôle :
- montage vidéo agentique ;
- couper silences ;
- sous-titres ;
- overlays ;
- final.mp4 ;
- montage de rushs.

Priorité : B+ / A- si production vidéo régulière.

Usage :
- facecam MonaSwitch ;
- FAQ FLAAK ;
- témoignages ;
- vidéos longues → shorts.

Risque :
- dépend transcription / ElevenLabs ;
- confidentialité rushs ;
- test non sensible d’abord.

---

#### 4.17 HeyGen Hyperframes

Lien :
https://github.com/heygen-com/hyperframes

Rôle :
- vidéo as code ;
- HTML/CSS/JS → MP4 ;
- motion design contrôlé ;
- vidéos landing / ads / SaaS.

Priorité : A-

Usage :
- MonaSwitch hero videos ;
- vidéos explicatives Ecocasse ;
- FAQ FLAAK ;
- motions pour sites.

Différence :
- HeyGen = avatars / voix / doublage ;
- Hyperframes = motion design codé.

Règle :
- dossiers sans accents ;
- test local ;
- pas de donnée sensible.

---

#### 4.18 Open Generative AI

Lien :
https://github.com/Anil-matcha/Open-Generative-AI

Rôle :
- studio open source image / vidéo / lip sync / cinema ;
- interface multimodèle ;
- potentiellement alternative Higgsfield/Krea/Freepik/OpenArt.

Priorité : B+ / A- après test.

Important :
- interface open source ;
- générations cloud souvent via MuAPI ;
- modèles performants probablement payants ;
- local possible mais vidéo lourde.

Sources / points vérifiés :
- repo Open Generative AI ;
- besoin éventuel de clé MuAPI ;
- builds desktop non signés possibles ;
- “gratuit” = souvent interface, pas génération illimitée.

Règle :
- tester sans données sensibles ;
- vérifier prix réel ;
- ne jamais lancer batch vidéo sans coût.

---

#### 4.19 Zopia

Lien :
https://zopia.ai/fr

Rôle :
- agent réalisateur / storytelling vidéo ;
- films courts ;
- storyboard ;
- séquences narratives.

Priorité : B-

Statut :
- plateforme web ;
- pas de repo public installable confirmé ;
- intégration OpenClaw/skill à vérifier.

Usage :
- inspiration vidéo ;
- storyboards ;
- contenus marque.

Pas prioritaire tant que l’intégration gratuite n’est pas vérifiée.

---

### Catégorie D — Ads, SEO, audit publicitaire

#### 4.20 Claude Ads Audit Skill

Lien :
https://github.com/AgriciDaniel/claude-ads

Rôle :
- audit comptes publicitaires ;
- Google Ads ;
- Meta Ads ;
- LinkedIn ;
- TikTok ;
- Microsoft Ads ;
- tracking ;
- structure ;
- dépenses inutiles.

Priorité : A

Usage :
- FLAAK ;
- clients ;
- offre Audit Ads IA ;
- diagnostic rapide ;
- plan d’action.

Règle :
- audit repo avant installation ;
- accès lecture seule ;
- pas de modification campagnes ;
- pas de token en clair ;
- pas de compte client sans accord.

Offre possible :
**Audit Ads IA Express**
- score compte ;
- budget gaspillé ;
- tracking ;
- campagnes à couper ;
- campagnes à renforcer ;
- créas à produire ;
- plan 7 jours.

---

#### 4.21 Claude SEO

Lien :
https://github.com/AgriciDaniel/claude-seo

Rôle :
- audit SEO ;
- technique ;
- on-page ;
- images ;
- sitemap ;
- schema ;
- local SEO ;
- GEO/AI search ;
- Search Console / PageSpeed / GA4 selon setup.

Priorité : A-

Usage :
- WordPress ;
- Shopify ;
- PrestaShop ;
- MonaSwitch ;
- FLAAK ;
- sites clients.

---

#### 4.22 Shopify AI Toolkit

Lien GitHub :
https://github.com/Shopify/shopify-ai-toolkit

Doc :
https://shopify.dev/docs/apps/build/ai-toolkit

Rôle :
- outil officiel Shopify ;
- connecte IA à documentation, API schemas, code validation et capacités store management via CLI ;
- compatible Claude Code, Codex, Cursor, Gemini CLI selon docs.

Priorité : A+

Usage :
- optimiser produits ;
- SEO titles ;
- meta descriptions ;
- alt text ;
- collections ;
- thème ;
- store operations selon permissions.

Règle :
- lecture seule au départ ;
- backup/export produits ;
- test 2–3 produits ;
- validation humaine avant productUpdate/fileUpdate ;
- aucune modification prix/stock/commande sans validation.

Offre :
**Pack Optimisation SEO Shopify IA**

---

#### 4.23 WordPress Automation

Base :
https://developer.wordpress.org/rest-api/

Approche :
- WordPress REST API ;
- plugin SEO détecté : Yoast / Rank Math / SEOPress / AIOSEO ;
- Claude SEO ;
- scripts ou MCP WordPress si fiable.

Priorité : A-

Usage :
- pages ;
- articles ;
- metas ;
- alt text ;
- maillage ;
- schema ;
- audit technique.

Règle :
- export/backup ;
- lecture seule ;
- test 2 pages/articles ;
- jamais publier sans validation.

---

#### 4.24 PrestaShop Automation

Doc :
https://devdocs.prestashop-project.org/

Approche :
- export CSV d’abord ;
- PrestaShop Webservice API ensuite si nécessaire ;
- produits ;
- catégories ;
- meta_title ;
- meta_description ;
- slugs/link_rewrite ;
- descriptions.

Priorité : B+

Règle :
- CSV sécurisé avant API ;
- ne pas toucher prix / stock / commandes ;
- test 2 produits ;
- rapport avant/après.

---

### Catégorie E — Sales, marketing, agence, équipes IA

#### 4.25 AI Sales Team

Lien :
https://github.com/zubair-trabzada/ai-sales-team-claude

Rôle :
- prospection ;
- qualification BANT/MEDDIC ;
- recherche décideurs ;
- outreach ;
- préparation rendez-vous ;
- propositions commerciales ;
- rapports pipeline.

Priorité : A+

Usage :
- urgence cash ;
- prospection MonaSwitch ;
- offres audit/site/ads/e-commerce ;
- propositions PDF.

Règle :
- pas d’envoi automatique au début ;
- rédaction oui ;
- recherche oui ;
- validation humaine avant message.

---

#### 4.26 AI Marketing Suite

Lien :
https://github.com/zubair-trabzada/ai-marketing-claude

Rôle :
- audit site ;
- copywriting ;
- séquences email ;
- campagnes ads ;
- calendrier contenu ;
- analyse concurrentielle ;
- rapports PDF.

Priorité : A

Usage :
- MonaSwitch ;
- FLAAK ;
- Ecocasse ;
- clients ;
- audit marketing IA.

---

#### 4.27 Startup OS Skills

Lien :
https://github.com/ncklrs/startup-os-skills

Rôle :
- startup operations ;
- marketing ;
- sales ;
- product ;
- customer success ;
- video production ;
- engineering.

Priorité : A-

Usage :
- organisation 24 projets ;
- opérations ;
- customer ;
- process clients ;
- product Ecocasse.

---

#### 4.28 Awesome Claude Corporate Skills

Lien :
https://github.com/w95/awesome-claude-corporate-skills

Rôle :
- finance ;
- accounting ;
- HR ;
- legal ;
- operations ;
- customer success ;
- marketing ;
- sales.

Priorité : B+

Usage :
- structurer départements MonaSwitch :
  - Finance ;
  - HR ;
  - Operations ;
  - Customer ;
  - Legal.

---

#### 4.29 Alirez Resvani Claude Skills

Lien :
https://github.com/alirezarezvani/claude-skills

Rôle :
- grosse bibliothèque multi-domaines ;
- skills/plugins/agents ;
- compatible Claude Code / Codex / Gemini / Cursor etc.

Priorité : A- comme bibliothèque, pas installation globale.

Règle :
- piocher seulement ;
- ne pas tout installer.

---

#### 4.30 Borghei Claude-Skills

Lien :
https://github.com/borghei/Claude-Skills

Rôle :
- très grosse bibliothèque ;
- finance ;
- legal ;
- compliance ;
- marketing ;
- engineering ;
- operations.

Priorité : B+

Usage :
- FLAAK compliance ;
- finance ;
- opérations ;
- documentation.

Règle :
- piocher, ne pas tout installer.

---

#### 4.31 Antigravity Awesome Skills

Lien :
https://github.com/sickn33/antigravity-awesome-skills

Rôle :
- 1 000+ skills agentiques ;
- Claude Code / Codex / Gemini / Cursor / Antigravity etc.

Priorité : B+ / A- si bien sélectionné.

Règle :
- ne jamais full install ;
- choisir 10–20 skills par mission.

---

### Catégorie F — MCP, API, sécurité, qualité

#### 4.32 Playwright Skill

Lien :
https://github.com/lackeyjb/playwright-skill

Rôle :
- tests navigateur réel ;
- responsive ;
- formulaires ;
- CTA ;
- bugs invisibles dans code.

Priorité : A+

Usage :
- sites ;
- FLAAK ;
- MonaSwitch ;
- Ecocasse ;
- Shopify/WordPress/PrestaShop front.

---

#### 4.33 Security Review

Lien :
https://github.com/anthropics/claude-code-security-review

Rôle :
- revue sécurité automatisée ;
- GitHub Action / analyse code.

Priorité : A

Usage :
- MCP ;
- API ;
- formulaires ;
- données sensibles ;
- e-commerce ;
- FLAAK ;
- Ecocasse.

Règle :
- complète revue humaine, ne remplace pas jugement humain.

---

#### 4.34 Superpowers

Lien :
https://github.com/obra/superpowers

Rôle :
- discipline Claude Code ;
- plan ;
- TDD ;
- self-review ;
- workflows plus propres.

Priorité : A-

Usage :
- éviter que Claude parte n’importe comment ;
- projets longs ;
- code propre.

---

#### 4.35 MCP Builder

Sources :
https://github.com/anthropics/skills  
https://github.com/anthropics/claude-plugins-official

Rôle :
- créer MCP servers ;
- intégrer API ;
- connecter outils.

Priorité : A- plus tard.

Risque :
- accès fichiers/API ;
- injection ;
- permissions ;
- tokens.

Règle :
- sandbox ;
- accès minimum ;
- lecture seule ;
- audit sécurité.

---

#### 4.36 Skill Creator

Lien :
https://github.com/daymade/claude-code-skills

Rôle :
- créer, valider, packager ses propres skills Claude Code.

Priorité : B+ / A- plus tard.

Usage :
- créer skills MonaSwitch maison :
  - `monaswitch-project-audit`;
  - `flaak-meta-ads`;
  - `premium-website-factory`;
  - `api-cost-estimator`;
  - `mcp-security-check`.

---

#### 4.37 Self-Healing Claude

Lien :
https://github.com/pandnyr/self-healing-claude

Rôle :
- Claude diagnostique/corrige ses erreurs ;
- sessions moins bloquées.

Priorité : B / sandbox seulement.

Risque :
- relances automatiques ;
- modifications imprévues ;
- boucles ;
- masquage d’erreurs.

---

#### 4.38 Research Skill

Lien :
https://github.com/altmbr/claude-research-skill

Rôle :
- sous-agents de recherche ;
- rapport structuré.

Priorité : B+

Usage :
- benchmark outils ;
- concurrents ;
- SEO ;
- ads ;
- recherches techniques.

---

#### 4.39 RUFLO

Lien :
https://github.com/ruvnet/ruflo

Rôle :
- orchestration multi-agents ;
- Claude Code / Codex / MCP ;
- swarm ;
- workflows autonomes ;
- RAG agentique.

Priorité : B+ maintenant, A plus tard.

Usage :
- Ecocasse ;
- gros projets ;
- coordination agents ;
- 24 projets quand le cockpit est clair.

Règle :
- pas maintenant en production ;
- sandbox ;
- pas d’agents avec permissions larges.

---

#### 4.40 Oh My Claude / Oh My Claude Code

Lien :
https://github.com/vincentkoc/oh-my-claude-code

Rôle :
- orchestration Claude Code ;
- agents spécialisés ;
- workflows.

Priorité : B+ / A- plus tard.

Risque :
- exécution code ;
- accès credentials ;
- chaos multi-agent.

---

### Catégorie G — Formation / références / non prioritaires

#### 4.41 Agentic Academy

Lien :
https://agentic-academy.fr/discover/watch/68747693-1ff8-49f1-9834-928c9fc7c74b

Rôle :
- formation Claude Code ;
- templates ;
- MCP ;
- communauté.

Priorité : B

Décision :
- intéressant si templates/MCP concrets ;
- pas prioritaire si seulement vidéos.

---

#### 4.42 EZYE Automation Page

Lien :
https://ezye.com.au/guide/claude-higgsfield-marketing

Rôle :
- référence de landing page d’agence automation ;
- audit gratuit ;
- calculateur ROI ;
- segmentation industries ;
- structure de conversion.

Priorité : A- comme inspiration stratégique.

Usage :
- page MonaSwitch Audit IA & Automatisation.

---

#### 4.43 Claude Design Premium Website Workflow

Rôle :
- guide création sites premium animés ;
- site comme cheval de Troie ;
- upsell infrastructure IA ;
- Screen Studio / Shots / Twitter/LinkedIn.

Priorité : A comme stratégie d’offre.

À retenir :
Le site est la porte d’entrée. L’argent est dans l’infrastructure d’acquisition IA.

---

## 5. Ordre d’installation recommandé

### Phase 0 — Préparation

1. Créer dossier maître :
   - `C:\MonaSwitch\`
   - `C:\MonaSwitch-Lab\`
   - `C:\MonaSwitch-Docs\`
   - `C:\MonaSwitch-CreativeFactory\`

2. Installer bases Windows :
   - Git for Windows ;
   - Node.js LTS ;
   - npm/pnpm ;
   - Python ;
   - ffmpeg ;
   - VS Code ;
   - Git LFS si nécessaire.

3. Installer Claude Desktop / Claude Code Desktop officiel.
4. Vérifier Claude Code CLI.
5. Configurer repo sandbox.
6. Mettre en place règles sécurité.

---

### Phase 1 — Cash et production immédiate

À tester en premier :

1. AI Sales Team  
   https://github.com/zubair-trabzada/ai-sales-team-claude

2. AI Marketing Suite  
   https://github.com/zubair-trabzada/ai-marketing-claude

3. Claude Ads Audit Skill  
   https://github.com/AgriciDaniel/claude-ads

4. Claude SEO  
   https://github.com/AgriciDaniel/claude-seo

5. GPT Image 2 Skill  
   https://github.com/wuyoscar/gpt_image_2_skill

Objectif :
- prospecter ;
- auditer ;
- générer propositions ;
- créer ads ;
- vendre packs rapides.

---

### Phase 2 — Sites premium

1. Claude Design
2. Awesome Claude Design  
   https://github.com/VoltAgent/awesome-claude-design

3. Google Stitch Skills  
   https://github.com/google-labs-code/stitch-skills

4. Frontend Design Skill
5. Playwright Skill  
   https://github.com/lackeyjb/playwright-skill

6. Security Review  
   https://github.com/anthropics/claude-code-security-review

Objectif :
- sites premium ;
- landing pages ;
- tests ;
- qualité.

---

### Phase 3 — Vidéo / créa

1. Claude Video Vision  
   https://github.com/jordanrendric/claude-video-vision

2. Hyperframes  
   https://github.com/heygen-com/hyperframes

3. video-use  
   https://github.com/browser-use/video-use

4. Seedance/Higgsfield workflow
5. Open Generative AI  
   https://github.com/Anil-matcha/Open-Generative-AI

Objectif :
- vidéos ;
- ads ;
- fake 3D ;
- motion design ;
- analyse de références.

---

### Phase 4 — CMS / e-commerce

1. Shopify AI Toolkit  
   https://github.com/Shopify/shopify-ai-toolkit

2. WordPress REST API workflow  
   https://developer.wordpress.org/rest-api/

3. PrestaShop workflow  
   https://devdocs.prestashop-project.org/

Objectif :
- offres SEO e-commerce ;
- Shopify / WordPress / PrestaShop ;
- audit + optimisation.

---

### Phase 5 — Organisation et multi-agents

1. Startup OS Skills  
   https://github.com/ncklrs/startup-os-skills

2. Corporate Skills  
   https://github.com/w95/awesome-claude-corporate-skills

3. Alirez Skills  
   https://github.com/alirezarezvani/claude-skills

4. Antigravity Awesome Skills  
   https://github.com/sickn33/antigravity-awesome-skills

5. RUFLO  
   https://github.com/ruvnet/ruflo

6. Oh My Claude  
   https://github.com/vincentkoc/oh-my-claude-code

Objectif :
- seulement après stabilité ;
- piocher skills ;
- orchestrer 24 projets.

---

## 6. Structure de dossiers recommandée

```text
C:\MonaSwitch\
  00_MASTER\
    monaswitch-master-stack.md
    api-mcp-governance.md
    costs-and-margins.md
    project-index.md
    routines.md
    prompts-library.md

  01_PROJECTS\
    monaswitch-site\
    flaak-landing\
    ecocasse-app\
    client-sites\

  02_CREATIVE_FACTORY\
    prompts\
      monaswitch-ads.json
      flaak-ads.json
      ecocasse-videos.json
    refs\
      monaswitch\
      flaak\
      ecocasse\
    outputs\
      images\
      videos\
      ads\
    scripts\
      estimate_costs.py
      generate_images.py
      rename_outputs.py

  03_SKILLS_LAB\
    audited\
    installed\
    rejected\
    sandbox-tests\

  04_CMS_ECOMMERCE\
    shopify\
    wordpress\
    prestashop\
    exports\
    reports\

  05_ROUTINES\
    daily-control-tower.md
    weekly-flaak-review.md
    cms-seo-audit.md
    pr-safety-review.md
```

---

## 7. Gouvernance API / MCP

Créer fichier :
`00_MASTER/api-mcp-governance.md`

Contenu obligatoire :

```text
Pour chaque API/MCP :
- nom ;
- utilité ;
- projet concerné ;
- coût fixe ;
- coût variable ;
- permissions ;
- données accessibles ;
- lecture seule possible ;
- clés dans .env ;
- risques ;
- procédure backup ;
- procédure rollback ;
- validation humaine requise ;
- date de dernière revue.
```

Règles clés :
- clés API jamais dans prompts ;
- `.env` uniquement ;
- permissions minimales ;
- lecture seule d’abord ;
- logs sans secrets ;
- aucune génération payante sans validation ;
- aucune action client sans validation.

---

## 8. Tableau de coûts à suivre

Créer fichier :
`00_MASTER/costs-and-margins.md`

Catégories :

```text
1. ChatGPT / Codex
2. Claude / Claude Code / Claude Desktop / Cowork / Routines
3. Gemini
4. OpenAI API / GPT Image
5. Higgsfield / Seedance
6. HeyGen
7. Hyperframes
8. ElevenLabs / transcription
9. MuAPI / Open Generative AI
10. Canva / Figma / Adobe
11. Vercel / Netlify / Cloudflare / hosting
12. Make / Zapier / n8n
13. Google Workspace
14. CRM / GoHighLevel / HubSpot
15. Ads budgets
```

Pour chaque offre :
```text
Prix vendu
- coût API
- coût outil
- coût temps humain
- coût prestataire
= marge réelle
```

---

## 9. Workflows maîtres

### 9.1 Workflow “Créer un site premium client”

1. Brief business.
2. Choix style / DESIGN.md.
3. Claude Design ou Stitch.
4. SITE.md.
5. Maquette.
6. Validation.
7. Code Claude Code/Codex.
8. Assets images/vidéos.
9. Formulaire / WhatsApp / CRM.
10. Tracking.
11. Playwright test.
12. Security Review.
13. Déploiement.
14. Vidéo démo.
15. Proposition upsell acquisition.

---

### 9.2 Workflow “Ads créatives”

1. Définir objectif business.
2. Définir angles.
3. Générer 20 concepts.
4. Validation.
5. GPT Image / Seedance / Higgsfield.
6. Limite coût.
7. Sélection.
8. Export formats.
9. Création textes ads.
10. Lancement test.
11. Audit Claude Ads.
12. Nouvelles variantes.

---

### 9.3 Workflow “Audit e-commerce”

1. Identifier plateforme : Shopify / WordPress / PrestaShop.
2. Backup/export.
3. Lecture seule.
4. Audit SEO.
5. Rapport.
6. Validation.
7. Test 2 produits/pages.
8. Batch limité.
9. Vérification.
10. Rapport avant/après.

---

### 9.4 Workflow “Vidéo fake 3D scroll”

1. Concept ChatGPT.
2. Prompt vidéo IA.
3. Génération Seedance/Higgsfield/Open Gen AI.
4. Extraction frames si canvas.
5. Intégration méga-prompt / Emergent / React.
6. UI superposée.
7. Test performance.
8. Mobile.
9. Compression WebP.
10. Déploiement.

---

## 10. Prompt global à donner à Claude Code avant toute installation

```text
Claude, voici le fichier maître MonaSwitch Stack.

Mission :
Créer progressivement une stack IA propre, sécurisée et opérationnelle pour MonaSwitch, FLAAK, Ecocasse et nos projets clients.

Règle principale :
Tu n’installes rien sans audit préalable.
Tu ne connectes aucune API sans validation.
Tu ne modifies aucun projet existant sans backup.
Tu ne lances aucune génération payante sans validation.
Tu ne touches pas aux données sensibles.
Tu travailles d’abord en sandbox.

Méthode :
1. Lis ce fichier maître.
2. Propose un ordre de test.
3. Commence par Phase 0.
4. Vérifie les prérequis Windows.
5. Crée les dossiers.
6. Audite les repos de Phase 1.
7. Pour chaque repo, donne :
   - résumé ;
   - utilité ;
   - installation ;
   - risques ;
   - permissions ;
   - recommandation ;
   - test sandbox.
8. Attends validation avant installation.

Format de réponse obligatoire :
1. Ce que j’ai compris
2. Ce que je peux faire maintenant
3. Ce dont j’ai besoin
4. Risques
5. Prochaine action recommandée
```

---

## 11. Prompt global à donner à GPT-5.5 / ChatGPT

```text
Tu es le copilote stratégique MonaSwitch.

Mission :
Analyser, arbitrer et améliorer tout ce que Claude Code, Codex, Gemini, Management Agent et les autres outils proposent.

Rôle :
- formuler les prompts parfaits ;
- corriger les réponses des agents ;
- prioriser P1/P2/P3 ;
- protéger contre les coûts/API/risques ;
- structurer les offres ;
- maintenir la cohérence business ;
- transformer les outils en livrables vendables ;
- éviter la dispersion.

Quand je te colle une réponse Claude/Codex :
1. résume ce qu’il dit ;
2. détecte les risques ;
3. dis si c’est utile ;
4. dis quoi répondre ;
5. donne le prompt exact à renvoyer ;
6. propose la prochaine action.

Objectif prioritaire :
Faire avancer MonaSwitch, FLAAK, Ecocasse et les 24 projets avec une méthode claire, en gardant l’urgence cash au centre.
```

---

## 12. Ce qu’il ne faut pas oublier

- Claude Code Desktop : cockpit visuel Windows.
- Routines : surveillance et automatisation cloud.
- Shopify AI Toolkit : brique officielle très forte pour Shopify.
- WordPress/PrestaShop : workflows sécurisés par export/API.
- Ads Audit : brique cash très utile.
- Sales + Marketing : priorités business immédiates.
- Claude Design + Stitch : sites premium.
- GPT Image + Seedance/Higgsfield : créa.
- Hyperframes : vidéos codées.
- Playwright + Security Review : contrôle qualité indispensable.
- RUFLO / Oh My Claude : plus tard, pas au début.
- Open Generative AI : open source interface, mais génération potentiellement payante.
- Emergent fake 3D : pas de GitHub identifié, méthode intéressante si kit disponible.
- Tous les MCP/API doivent être audités.

---

## 13. Résumé ultra court pour décision

Priorité absolue maintenant :

1. Installer cockpit Windows propre : Claude Desktop/Code + Git + dossiers.
2. Mettre en place fichier maître + gouvernance API.
3. Auditer AI Sales Team / AI Marketing Suite.
4. Auditer Ads Audit / SEO.
5. Tester Claude Design + Awesome Claude Design.
6. Tester Playwright sur un site.
7. Créer premières offres cash.
8. Créer premières routines lecture seule.
9. Ensuite seulement : vidéo, CMS, orchestration avancée.

Phrase clé :

> On ne construit pas une collection d’outils. On construit une machine MonaSwitch : produire, vendre, auditer, automatiser, sécuriser, scaler.
