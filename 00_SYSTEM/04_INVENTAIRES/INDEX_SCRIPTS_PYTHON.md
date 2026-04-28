# INDEX SCRIPTS PYTHON / JS — MonaSwitch_HQ

**Source** : `C:\Users\alain\MonaSwitch_HQ\scripts\` + dossier root
**Total détecté** : **187 scripts** (vs 140+ annoncés dans l'arsenal — encore plus !)
**Date** : 2026-04-28
**Méthode** : `ls` filesystem direct, catégorisation par préfixe.

---

## Catégories détectées (par préfixe)

| Préfixe | Famille | Nb estimé |
|---|---|---|
| `flaak-*` | SEO + WordPress projet 03 Flaak | ~50+ |
| `casseautovhu-*` | Production projet 01 | ~10 |
| `semrush-*` | Audit SEMrush multi-projets | ~10 |
| `create-*` | Création (Airtable, landing) | ~5 |
| `enrich-*` | Enrichissement contenu | ~5 |
| `export-*` | Export CSV/data | ~5 |
| `build-*` | Build référentiels | ~5 |
| `ce-*.json` | Content Editors SurferSEO | ~10 |
| `levinenbouche-*` | Projet 05 Vin en Bouche | ? |
| `marinetti-*` | Projet 04 Julien Marinetti | ? |
| `shopify-*` | Intégrations Shopify | ? |
| `gdrive-*` / `drive-*` | Google Drive | ? |
| `setup-*` | Setup divers | ? |
| `patch-*` | Patches | ? |
| `publish-*` | Publication | ? |
| `rewrite-*` | Réécriture contenu | ? |
| `fix-*` | Corrections | ? |
| `deploy-*` | Déploiements | ? |
| `generate-*` | Génération diverse | ? |

---

## Scripts identifiés explicitement (extrait des 50 premiers)

### 📊 Audits SEO & SEMrush
- `flaak-audit-articles.py`
- `flaak-audit-h1.py`
- `flaak-audit-hreflang.py` / `flaak-audit-hreflang-v2.py`
- `flaak-audit-meta.py` / `flaak-audit-meta-v2.py`
- `flaak-audit-nofollow.py`
- `flaak-audit-prix.py`
- `flaak-audit-schema.py`
- `flaak-audit-titles.py` / `flaak-audit-titles-dupes.py`
- `flaak-alt-text-audit.py`

### ✏️ Réécriture & Mise à jour Flaak
- `flaak-4810-update.py`
- `flaak-5articles-update.py`
- `flaak-60-plans.py`
- `flaak-batch1-expand.py`
- `flaak-batch1-rewrite.py`
- `flaak-batch2-definitive.py`
- `flaak-autopublish.py`

### 🏗️ Build / Référentiels
- `build-departements2.mjs`
- `build-pool-flux.mjs`
- `build-pool-hf.mjs`
- `build-referentiel.mjs`
- `build-regions-departements.mjs`

### 🚗 Casse Auto VHU
- `casseautovhu-production.mjs`

### 📋 Airtable
- `create-airtable-bases.py`
- `create-airtable-tables.py`

### 🌐 Landing pages
- `create-landing.py`
- `create-landing-modele.py`
- `create-nice-structures.py`

### 🚀 Déploiement
- `deploy-flaak-chatbot.py`

### 📤 Export / Drive
- `drive-upload-docs.py`
- `export-bordeaux-test.mjs`
- `export-departements2-csv.mjs`
- `export-tests-csv.mjs`

### ✨ Enrichissement
- `enrich-en-homepage.py`

### 🔧 Fixes
- `fix-flaak-h1.py`
- `fix-flaak-titles-slugs.py`

### 📡 Posts (root scripts)
- `boost_posts.py`
- `enrich_posts.py`
- `eyes_boost.py`

---

## Prochaine action recommandée

**Audit complet du dossier** : exécuter un script de catalogage pour produire la liste exhaustive des 187 scripts avec :
- Nom complet
- Première ligne / docstring
- Dépendances import
- Date de dernière modification

```bash
ls -la /c/Users/alain/MonaSwitch_HQ/scripts/ > scripts_inventaire.txt
```

À placer dans `00_SYSTEM/04_INVENTAIRES/scripts_python_complet.txt` (TODO Felix).

---

## Notes

- **Pas d'exécution de script** durant cet audit (lecture seule).
- Beaucoup de scripts portent le nom `flaak-*` → cohérent avec le **gros chantier SEO Flaak** (40+ articles publiés, audit SEMrush, RankMath API).
- Le dossier root `MonaSwitch_HQ/` contient aussi des outputs PNG (audits SEMrush capturés), des CSV de données (départements, villes, collectivités) et des JSON (résultats batch).
- Le dossier `MonaSwitch_HQ/mcps/surferseo/` confirmé contient le server.py custom du MCP SurferSEO.
