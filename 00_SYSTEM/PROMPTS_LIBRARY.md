# MONASWITCH STUDIO — PROMPTS LIBRARY V1

> Bibliothèque de prompts prêts à copier-coller, par catégorie.
> **V1 exploitable** — pas un document de 200 pages, juste ce qui sert vraiment.

**Créé le** : 2026-04-26
**Source principale** : `00_SYSTEM/05_STACK_REFERENCES/MonaSwitch_Studio_IA_Master_Stack.md` + extraits validés
**Mise à jour** : enrichir uniquement quand un prompt est testé et validé

---

## 📋 SOMMAIRE

1. [Sites premium (Claude Design + Stitch)](#1-sites-premium)
2. [Vidéo IA (Seedance / Higgsfield / Cinema)](#2-vidéo-ia)
3. [Routines lecture seule](#3-routines-lecture-seule)
4. [Ads & créatifs](#4-ads--créatifs)
5. [Audits (Ads, SEO, e-commerce)](#5-audits)
6. [Cold email B2B](#6-cold-email-b2b)
7. [Article SEO + humanizer](#7-article-seo)
8. [Méta-prompts orchestration](#8-méta-prompts)

---

## 1. SITES PREMIUM

### 1.1 — Brief Claude Design (à donner avant génération)

```
Utilise le design system importé comme base visuelle, mais adapte-le fortement au projet.

Projet : [NOM_PROJET]
Objectif : [WhatsApp / RDV / démo / vente / inscription]
Cible : [CLIENT_IDÉAL]
Pages/écrans : [LISTE_PAGES]
Style : Premium, cohérent, non générique, adapté à la marque.

Avant de générer, propose :
1. direction artistique
2. structure
3. sections
4. assets nécessaires
5. éléments manquants

Ne génère rien tant que je n'ai pas validé.
```

### 1.2 — Workflow Stitch + Claude Code (sites)

```
Mission : créer un site [TYPE] pour [PROJET].

Étapes (NE PAS sauter) :
1. Génère DESIGN.md basé sur la cible et l'objectif business
2. Génère SITE.md avec structure complète des pages
3. Liste les écrans à produire
4. Pour chaque écran, donne brief Stitch
5. Attends ma validation avant de produire les composants React
6. Test responsive Playwright après build

Brief business :
- Objectif : [...]
- Cible : [...]
- Conversion principale : [...]
- Pages : [...]

Ne lance aucun batch de génération payant sans validation.
```

### 1.3 — Méga-prompt landing cinematic (scroll-scrub vidéo)

```
Crée une landing page premium cinématique pour [PROJET].

Stack : Vite + React + TypeScript + Tailwind v4 + shadcn + Framer Motion.
Effet : scroll-scrub vidéo via canvas frame sequence.
Style : liquid glass, dark premium.

Workflow technique :
1. Vidéo source 5-15s en arrière-plan (à fournir)
2. Extraction frames JPG/WebP avec ffmpeg
3. Canvas affiche la frame selon position du scroll
4. Sections marketing classiques superposées (hero, features, pricing, CTA)

Avant de coder :
- propose direction artistique
- liste assets nécessaires
- estime poids final mobile
- avertis sur points de performance critiques

Ne lance pas le build sans ma validation.
```

---

## 2. VIDÉO IA

### 2.1 — Concept generator vidéo (Seedance/Higgsfield)

```
Prépare 5 concepts vidéo pour [PROJET] sans générer.

Pour chaque concept :
- angle marketing
- skill ou modèle recommandé (Seedance / Higgsfield / Kling)
- durée (15s / 30s / 60s)
- hook (3 premières secondes)
- scène détaillée
- mouvement caméra (focal length, dolly, etc.)
- texte écran (si UGC)
- CTA
- risque (coût estimé, contenu sensible)
- prompt prêt à coller dans l'outil

Ne génère AUCUNE vidéo avant validation.
Maximum 3 vidéos test si je valide.
```

### 2.2 — Pipeline UGC HeyGen + Remotion

```
Mission : produire 1 vidéo UGC 60s pour [PROJET].

Pipeline :
1. Script (humanizer) — fais-moi le valider
2. Voix : ElevenLabs avec voix Nicolas (stability 0.50)
3. Avatar : HeyGen (via MCP)
4. Backgrounds : prompts cinema-director → Flow / Nano Banana
5. Animations : Seedance/Kling (clips loop)
6. Montage : Remotion (composant HeyGenPresenter)
7. Sous-titres : audio-transcriber → injection Remotion
8. Export : 9:16 + 1:1 + 16:9

Rangement final dans :
G:\Mon Drive\MonaSwitch_Studio\01_PROJETS\[PROJET]\06_EXPORTS\

Estime le coût total avant de lancer la production payante.
```

---

## 3. ROUTINES LECTURE SEULE

### 3.1 — Daily MonaSwitch Control Tower

```
Routine : Daily MonaSwitch Control Tower

Chaque matin à 8h30, analyse les projets MonaSwitch disponibles.

Règles strictes :
- Lecture seule.
- Ne modifie aucun fichier.
- Ne lance aucune génération payante.
- Ne connecte aucune API.
- Ne touche pas aux clés, comptes clients, Ads, CRM ou données sensibles.
- Ne crée pas de PR.
- Ne push rien.

Analyse les 13 projets prioritaires de STUDIO_STATE.md.

Rapport attendu :
1. Résumé général en 10 lignes
2. État par projet (livrables en cours)
3. Blocages critiques
4. Tâches P1 cash (priorité absolue)
5. Tâches P2 importantes
6. Tâches P3 plus tard
7. Ce dont tu as besoin pour avancer
8. Prochaine action recommandée
```

### 3.2 — Weekly CMS SEO Audit (lecture seule)

```
Routine hebdomadaire : audit SEO des sites MonaSwitch.

Sites à auditer :
- Le Vin en Bouche (Shopify)
- Flaak Keratopigmentation (WordPress)
- MonaMedia (Framer)
- Casse Auto VHU (WordPress)

Règles :
- Lecture seule.
- Pas de modification metas/produits.
- Pas de modification stock/prix.

Rapport pour chaque site :
1. Top 5 pages avec problèmes SEO
2. Metas manquantes ou trop courtes
3. Alt text manquants images
4. Schema.org incomplet
5. Recommandations prioritaires (3 max)
```

---

## 4. ADS & CRÉATIFS

### 4.1 — Concepts ads (variantes A/B/C)

```
Génère 10 concepts ads pour [PROJET].

Pour chaque concept :
- Plateforme cible (Meta / Google / LinkedIn)
- Format (statique / carousel / vidéo)
- Hook visuel (image principale décrite)
- Hook texte (5-7 mots)
- Body copy (50-80 mots)
- CTA clair
- Pourquoi ce concept (psychologie)

Variantes :
- 4 sur la douleur
- 3 sur le résultat/aspirationnel
- 3 sur la preuve sociale

Ne génère aucun visuel maintenant. Liste les prompts à utiliser dans Flow / Nano Banana / GPT Image après validation.
```

### 4.2 — Brief Meta Ads

```
Brief campagne Meta Ads pour [PROJET].

Objectif business : [LEADS / VENTES / TRAFIC]
Budget mensuel proposé : [X €]
Audience cible : [DÉTAIL]

Livrables attendus :
1. Structure campagne (campagnes / ad sets / ads)
2. Audiences (lookalike, interest, retargeting)
3. 5 angles créatifs différents
4. 15 variantes textes (hook + body + CTA)
5. Estimation CPM / CPC selon niche
6. Tracking GA4 + Pixel + CAPI à mettre en place
7. Métriques succès semaine 1, 2, 4

Pas de lancement automatique. Validation manuelle obligatoire.
```

---

## 5. AUDITS

### 5.1 — Audit Ads Express (offre 290-790€)

```
Audit Ads Express pour [CLIENT].

Plateformes : [Google Ads / Meta Ads / LinkedIn / TikTok]
Période : 30 derniers jours.

Mode : LECTURE SEULE. Aucune modification de campagne.

Livrable :
1. Score global compte (/100)
2. Budget gaspillé (€/mois) avec preuve
3. Tracking : OK / problèmes détectés
4. Top 5 campagnes à couper (avec ROAS/CPA)
5. Top 5 campagnes à scaler
6. Créatifs à produire (5 angles)
7. Plan d'action 7 jours

Format final : PDF de 6-8 pages prêt à envoyer au client.
```

### 5.2 — Audit SEO complet site

```
Audit SEO pour [DOMAIN].

Mode : LECTURE SEULE.

Livrable :
1. Audit technique (CWV, mobile, indexabilité)
2. Audit on-page (top 20 pages)
3. Audit contenu (E-E-A-T, profondeur)
4. Audit Schema.org
5. Audit liens internes
6. Top 10 KW gap vs concurrents
7. Plan 90 jours (P1/P2/P3)

Outils utilisés : SurferSEO + SEMrush + skills SEO disponibles.
Estime quota API consommé avant audit.
```

### 5.3 — Audit Shopify (lecture seule + backup)

```
Audit boutique Shopify [BOUTIQUE].

Mode : LECTURE SEULE STRICTE.
Avant tout : exporter backup CSV produits + commandes 30j.

Livrable :
1. SEO produits (titles, metas, descriptions)
2. Alt text images manquants
3. Collections optimisables
4. Vitesse + Core Web Vitals
5. Schéma de prix (psychologie)
6. Funnels checkout (drop-off)
7. Plan d'optimisation (P1/P2/P3)

INTERDICTION ABSOLUE :
- modifier un prix
- modifier un stock
- modifier une commande
- supprimer un produit
```

---

## 6. COLD EMAIL B2B

### 6.1 — Séquence 3 emails (J0/J3/J7)

```
Séquence cold email B2B pour [OFFRE_MONASWITCH].

Cible : [DESCRIPTION_ICP]
Pain principal : [DOULEUR]
Différenciateur MonaSwitch : [USP]

Livrable :
- Email 1 (J0) : intro + cas client similaire — 80 mots max
- Email 2 (J3) : statistique choc + mini audit gratuit — 100 mots max
- Email 3 (J7) : dernière chance + offre limitée — 60 mots max

Pour chaque email :
- 3 subject lines (A/B/C test)
- Personnalisation par variable
- CTA unique et clair
- PASS humanizer (anti-IA)

Format final : prêt à coller dans SmartLead.
```

---

## 7. ARTICLE SEO

### 7.1 — Article SEO long (1800+ mots)

```
Article SEO pour [PROJET].

Focus KW : [KEYWORD_PRINCIPAL]
Langue : [FR / EN]
Termes NLP à intégrer : [LISTE_TERMES_DEPUIS_SURFER]
Volume cible : 1800-2400 mots

Pipeline :
1. Outline H2/H3 → fais-moi valider
2. Rédaction section par section
3. PASS humanizer (anti-IA)
4. PASS avoid-ai-writing pour naturalité
5. Meta title (60c) + meta description (155c)
6. Schema.org Article + Author
7. 3 liens internes vers monaswitch.com
8. CTA en fin

Score cible SurferSEO : 65+
Rangement : 01_PROJETS/[PROJET]/05_PRODUCTION/articles_blog/
Format : .md UTF-8 sans BOM
```

---

## 8. MÉTA-PROMPTS

### 8.1 — Démarrage nouvelle conversation

```
Avant de répondre, lis ces 3 fichiers :
- G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\STUDIO_STATE.md
- G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\DECISIONS_LOG.md
- G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\MAPPING_FORMATS_OUTILS.md

Confirme que tu as compris l'état actuel et les règles avant de produire quoi que ce soit.
```

### 8.2 — Format de réponse demandé à Claude (du Master Stack)

```
Format de réponse obligatoire pour ce projet :

1. Ce que j'ai compris
2. Ce que je peux faire maintenant
3. Ce dont j'ai besoin
4. Risques
5. Prochaine action recommandée
```

---

## 🔄 RÈGLES D'ENRICHISSEMENT

Quand tu testes un prompt et qu'il marche bien :
1. Ajoute-le ici dans la bonne section
2. Note la date + le projet où il a été testé
3. Si modification d'un prompt existant → garder l'ancienne version en commentaire

**Ne jamais ajouter** :
- Un prompt non testé "au cas où"
- Plusieurs versions du même prompt
- Des prompts de plus de 30 lignes (les longs vont dans 05_STACK_REFERENCES)

---

## 📜 HISTORIQUE

| Date | Modification | Source |
|------|--------------|--------|
| 2026-04-26 | Création V1 (8 catégories de prompts) | Master Stack + workflow MAPPING_FORMATS |
