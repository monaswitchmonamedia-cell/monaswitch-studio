# MONASWITCH STUDIO — MASTER FILE

Version: 2026-04-26

## Décision centrale

Créer un studio central pour produire sites, contenus RS, vidéos, carrousels, articles, assets et automatisations pour 24 projets MonaSwitch.

Architecture retenue:
- 1 dossier racine: MonaSwitch_Studio
- 1 conversation Claude par projet
- 1 projet peut contenir tous les formats
- classement par projet puis par format
- aucun déplacement automatique de fichiers personnels
- aucun scan global du PC
- pas de Metricool comme dépendance centrale

## Rôle des IA

### GPT-5.5
Cerveau stratégique: brief, SEO/AEO/GEO, scripts, idées, prompts image/vidéo, directions artistiques, structure éditoriale, contrôle qualité stratégique.

### Claude Code / Claude Design
Exécution: design system, UI, sites, composants, Remotion, exports, tests, intégrations, rangement fichiers, PowerShell.

## Phase 1 — outils

À connecter / auditer en priorité:
- HeyGen
- Remotion
- SEMrush
- SurferSEO
- Google Drive Desktop
- Claude Code
- GitHub
- Flow / Nano Banana selon accès
- GPT-Image via GPT-5.5 si disponible

À voir plus tard:
- Higgsfield
- pipeline publication RS définitif
- automatisations avancées

Exclu du cœur système:
- Metricool

## Projets prioritaires

| # | Projet | Domaine / repère |
|---|---|---|
| 01 | Casse Auto VHU | casseautovhu.com |
| 02 | New Addal | casseautovhu.com/new-addal |
| 03 | Flaak Keratopigmentation | flaak-keratopigmentation.com |
| 04 | Julien Marinetti | julienmarinetti.com |
| 05 | Le Vin en Bouche | levinenbouche.shop |
| 06 | MonaMedia | monamedia.mc |
| 07 | Ecocasse | ecocasse.fr |
| 08 | A l'Ombra Calvi Marche | alombracalvimarche.fr |
| 09 | MyCrown Estates | mycrownestates.mc |
| 10 | MonaSwitch | monaswitch.com |
| 11 | Consulting Energies | consulting-energies.fr |
| 12 | Creation Societe Irlande | creation-societe-irlande.com |
| 13 | Chirurgie Refractive | nouveau site a creer |

## Projets secondaires

| # | Projet | Repère |
|---|---|---|
| 14 | U Jardineru | projet secondaire |
| 15 | On The Vibes | projet secondaire |
| 16 | Le Carre Calvi | projet secondaire |
| 17 | Ken Like You | projet secondaire |
| 18 | Immo Inter Luxury | projet secondaire |
| 19 | Heartful Moment | projet secondaire |
| 20 | Headshare Customize | projet secondaire |
| 21 | Gros Knockout | projet secondaire |
| 22 | Fazzu Tuttu | projet secondaire |
| 23 | Draw Sabou | projet secondaire |
| 24 | Calvi On The Rocks | YouTube only |

## Structure par projet
Chaque dossier projet contient: 01_BRIEF, 02_BRAND_KIT, 03_SOURCES_RAW, 04_ASSETS, 05_PRODUCTION, 06_EXPORTS, 07_PUBLIES, 08_PERFORMANCE, 09_ARCHIVES.

## Workflow par projet
1. Setup: remplir PROJECT_CONTEXT.md, ajouter logo/couleurs/fonts/sources, créer brand kit, définir audiences, piliers et formats.
2. Production: GPT-5.5 produit brief/script/prompts; Claude exécute; fichiers dans 05_PRODUCTION; exports dans 06_EXPORTS.
3. QA: cohérence marque, mobile, desktop, accessibilité, performance, orthographe, conformité légale si secteur sensible.
4. Publication: dépôt dans 07_PUBLIES après publication; stats/captures dans 08_PERFORMANCE; outil publication à définir.

## Pipeline vidéo type
Script → voix/avatar si besoin → prompt visuel → génération images/vidéos → montage Remotion → sous-titres → exports 9:16/1:1/16:9 → captions → validation → publication/archive.

## Pipeline site type
Brief GPT-5.5 → design system Claude Design → sections → responsive → export code → tests Playwright → tracking à prévoir → déploiement → QA final.

## Règle sécurité fichiers
Aucun script ne doit scanner tout le PC, supprimer des fichiers, déplacer des fichiers existants, lire des fichiers privés hors dossier studio ou traiter des fichiers d’un tiers sans accord.
