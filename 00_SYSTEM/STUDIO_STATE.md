# MONASWITCH STUDIO — STATE (état actuel)

> **À lire en premier** dans toute nouvelle conversation Claude Code ou Claude.ai.
> Ce fichier est la **source de vérité** sur l'état du Studio.

**Dernière mise à jour** : 2026-04-26
**Validé par** : Alain + Claude Opus 4.7 + GPT-5.5
**Version Studio** : 1.0 (ossature validée)

---

## 1. Identité du Studio

- **Nom** : MonaSwitch Studio
- **Racine sur Drive** : `G:\Mon Drive\MonaSwitch_Studio\`
- **Compte Google Drive** : `monaswitchmonamedia@gmail.com`
- **Drive Desktop** : installé, sync active
- **Machine** : LAPTOP-EDMHVUB6
- **Utilisateur** : alain

---

## 2. Architecture validée

```
G:\Mon Drive\MonaSwitch_Studio\
├── 00_SYSTEM\               ← bible, instructions, scripts, fichiers maîtres
│   ├── MASTER_FILE.md
│   ├── CLAUDE_ROOT.md
│   ├── GPT55_INSTRUCTIONS.md
│   ├── README_INSTALLATION.md
│   ├── STUDIO_STATE.md       ← CE FICHIER
│   ├── DECISIONS_LOG.md      ← journal décisions
│   ├── CHEATSHEET_COMMANDES.md
│   ├── MAPPING_FORMATS_OUTILS.md
│   ├── INSTALLATION_PRIORITIES.md
│   └── SCRIPTS\ (Setup-Studio.ps1, Audit-StudioGlobal.ps1, Start-Studio.ps1)
│
├── 01_PROJETS\              ← 24 dossiers projets
│   ├── 01-casse-auto-vhu\
│   ├── 02-new-addal\
│   ├── 03-flaak-keratopigmentation\
│   ├── ... (24 projets au total)
│
├── 02_TRANSVERSE\           ← assets partagés entre projets
├── 03_EXPORTS_GLOBAUX\
├── 04_ARCHIVES\
├── CLAUDE.md                ← règles globales lues par Claude Code
└── _README.txt
```

Chaque dossier projet contient 9 sous-dossiers fixes :
`01_BRIEF`, `02_BRAND_KIT`, `03_SOURCES_RAW`, `04_ASSETS`, `05_PRODUCTION`,
`06_EXPORTS`, `07_PUBLIES`, `08_PERFORMANCE`, `09_PUBLICATION_A_DEFINIR`, `10_ARCHIVES`.

---

## 3. Liste des 24 projets

### Prioritaires (13)

| # | Projet | Domaine | Statut |
|---|--------|---------|--------|
| 01 | Casse Auto VHU | casseautovhu.com | actif |
| 02 | New Addal | casseautovhu.com/new-addal | actif |
| 03 | Flaak Keratopigmentation | flaak-keratopigmentation.com | actif |
| 04 | Julien Marinetti | julienmarinetti.com | actif |
| 05 | Le Vin en Bouche | levinenbouche.shop | actif |
| 06 | MonaMedia | monamedia.mc | actif |
| 07 | Ecocasse | ecocasse.fr | actif |
| 08 | A l'Ombra Calvi Marche | alombracalvimarche.fr | site en cours |
| 09 | MyCrown Estates | mycrownestates.mc | actif |
| 10 | MonaSwitch | monaswitch.com | actif |
| 11 | Consulting Energies | consulting-energies.fr | actif |
| 12 | Creation Societe Irlande | creation-societe-irlande.com | actif |
| 13 | Chirurgie Refractive | nouveau site à créer | à créer |

### Secondaires (11)

| # | Projet | Niche |
|---|--------|-------|
| 14 | U Jardineru | paysagistes |
| 15 | On The Vibes | musique |
| 16 | Le Carre Calvi | salon coiffure |
| 17 | Ken Like You | psy couples |
| 18 | Immo Inter Luxury | villas luxe |
| 19 | Heartful Moment | artistes/galeries |
| 20 | Headshare Customize | contenu varié |
| 21 | Gros Knockout | boxe |
| 22 | Fazzu Tuttu | construction |
| 23 | Draw Sabou | dessins animés |
| 24 | Calvi On The Rocks | YouTube only |

---

## 4. Rôles validés

### Claude Opus 4.7 (Claude Max — 200€/mois)
**Exécution technique et design**
- Build sites, écrans, composants, design systems
- Code (Remotion, frontend, backend, scripts)
- Tests Playwright
- Intégrations API
- Rangement structuré dans le studio
- QA mobile/desktop/accessibilité

### GPT-5.5 Pro (30€/mois)
**Cerveau stratégique**
- Briefs marketing
- SEO / AEO / GEO
- Scripts vidéo et copywriting
- Prompts image et vidéo
- Direction artistique
- Tri / catégorisation / cohérence
- Contrôle qualité stratégique

### Codex (NON PRIORITAIRE — voir D-014)
**Statut** : optionnel, à activer plus tard
**Audit code uniquement** — PAS de génération d'image, PAS d'usage maintenant
- Audit repos
- Tests
- Refactor
- PR/diffs
- Renfort sur Remotion / frontend / Playwright / sécurité

**Conditions d'activation** : repos stabilisés + PR GitHub + tests Playwright + besoin réel de review.

---

## 5. État de la machine (audit du 2026-04-26)

| Catégorie | Quantité |
|-----------|----------|
| Skills Claude Code | **1 362** |
| Agents personnalisés | **40** |
| Repos Git clonés | **2 204** |
| Projets npm | **1 036** |
| MCPs configurés | 7 (gemini-ai, stitch, shopify-levinenbouche, slack, google-drive, surferseo, pencil) |
| Plugins Claude Code | 8 |
| Outils CLI présents | 5/19 (node, npm, git, claude, code) |
| Clés API configurées | 1/19 (GEMINI_API_KEY) |

**Note** : l'audit V2 a affiché MCPs=0 et Plugins=0 à cause d'un bug de lecture quand Claude Code tournait. Les vraies valeurs sont 7 MCPs et 8 plugins (audit précédent).

---

## 6. Outils externes disponibles

| Outil | Statut | Usage |
|-------|--------|-------|
| HeyGen Enterprise | actif (~89$/mois) | avatar parlant |
| ElevenLabs | actif | voix Nicolas + flows |
| Higgsfield | crédits | clips vidéo IA |
| Flow / Nano Banana 2 | gratuit/payant | images IA (sans API) |
| CreaShorts | actif | shorts vidéo auto |
| Clone Viral | actif | repurposing viral |
| Abacus | actif | génération IA |
| Google Ultra | actif | Gemini, Imagen, Drive |
| Metricool | actif mais **pas dépendance Studio** | planification RS (à reconsidérer) |
| SEMrush | actif | SEO data |
| SurferSEO | actif | scoring contenu |
| Remotion 4.0.434 | installé global | montage vidéo programmatique |

---

## 7. Décisions verrouillées

Voir `DECISIONS_LOG.md` pour le détail.

Les principales :
- **Metricool n'est PAS une dépendance par défaut**. Outil de publication RS à redéfinir.
- **1 projet = 1 dossier dans 01_PROJETS**. Aucun mélange.
- **1 projet peut contenir tous les formats** (UGC, cinematic, carrousel, article, ad, site, email).
- **Travail séquentiel** : 1 projet à fond, puis le suivant.
- **Pas d'installation massive** sans validation. Tri d'abord, install ensuite.
- **Aucun scan automatique** du PC ou du Drive sans accord explicite.
- **Aucun fichier privé d'Alain (l'autre)** ne sera touché sans son accord.

---

## 8. Workflow standard pour ouvrir un projet

```powershell
cd C:\MonaSwitchSetup
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio"
# choisir numéro projet (01-24) puis action 3 (Launch Claude Code)
```

**Ouverture directe d'un projet** :
```powershell
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 06 -Action Claude
```

**Quitter Claude Code** : taper `/quit`

---

## 9. Règle d'or pour toute nouvelle conversation

Quand tu démarres une nouvelle conversation avec Claude Code OU Claude.ai OU GPT-5.5 :

> Lis d'abord `00_SYSTEM/STUDIO_STATE.md`, `DECISIONS_LOG.md` et `MAPPING_FORMATS_OUTILS.md`.
> Confirme que tu as compris l'état actuel et les règles avant de produire quoi que ce soit.

Avec ça, **plus jamais de mémoire perdue**. Tout est rechargeable depuis ces fichiers.

---

## 10. Statut des chantiers à venir

| Chantier | Priorité | Statut |
|----------|----------|--------|
| Verrouillage mémoire (5 fichiers maîtres) | 🔴 EN COURS | aujourd'hui |
| Installation Python + gh + ffmpeg | 🟡 SUIVANT | après verrouillage |
| Configuration clés API HeyGen/SEMrush/Surfer/ElevenLabs | 🟡 SUIVANT | après installs |
| Test projet pilote | 🟢 ENSUITE | à choisir |
| Cartographie complète des 1362 skills par catégorie | 🟢 PLUS TARD | référence |
| Installation repos GitHub additionnels | 🟢 PLUS TARD | au cas par cas |
| Évaluation Zopia | ⚪ À explorer | quand utile |
