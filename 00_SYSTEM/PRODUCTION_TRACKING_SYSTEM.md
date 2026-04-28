# MONASWITCH STUDIO — PRODUCTION TRACKING SYSTEM V1

> Système de suivi production pour les 24 projets.
> **V1 exploitable** — règles claires, pas un Excel à 50 colonnes.

**Créé le** : 2026-04-26
**Mise à jour** : à chaque livrable produit ou status change

---

## 🎯 OBJECTIF

Savoir à tout moment :
- **Quel projet** a quoi en cours
- **Quel livrable** est à quelle étape
- **Combien ça a coûté** (IA + humain)
- **Combien on a vendu** (cash priority)
- **Où sont rangés les fichiers**

Sans devenir un truc lourd à maintenir.

---

## 📋 RÈGLES DE NOMMAGE (UNIVERSELLES)

### Pour tous les fichiers de production

**Format obligatoire** :
```
{date}-{projet-slug}-{type}-{numero}-{etat}.{ext}
```

**Exemples** :
- `2026-04-28-monamedia-article-001-draft.md`
- `2026-04-28-monamedia-article-001-final.md`
- `2026-04-28-flaak-ugc-001-export-9x16.mp4`
- `2026-04-28-flaak-carousel-001-slide-03.png`
- `2026-04-28-le-vin-en-bouche-ad-001-meta.png`

**Slugs projets validés** (correspondent aux dossiers `01_PROJETS/`) :
```
casse-auto-vhu, new-addal, flaak, julien-marinetti,
le-vin-en-bouche, monamedia, ecocasse, alombra-calvi,
mycrown-estates, monaswitch, consulting-energies,
creation-societe-irlande, chirurgie-refractive, etc.
```

**Types de livrables** :
```
article, ugc, cinematic, reel, short, carousel,
ad, landing, email-cold, email-newsletter, audit,
proposal, quote, contract
```

**États** :
```
brief → draft → review → final → exported → published → measured
```

---

## 📊 OÙ RANGER CHAQUE FICHIER

Pour chaque projet dans `01_PROJETS/{projet}/` :

| Étape | Dossier | Exemple |
|-------|---------|---------|
| Brief client | `01_BRIEF/` | `2026-04-28-flaak-brief-article-001.md` |
| Brand kit | `02_BRAND_KIT/` | `colors.json`, `logo.svg`, `fonts/` |
| Sources brutes | `03_SOURCES_RAW/` | photos client, logo HD, vidéos sources |
| Assets travail | `04_ASSETS/` | images générées, voix off, etc. |
| **Production** | `05_PRODUCTION/` | sous-dossiers par type (voir ci-dessous) |
| **Exports finaux** | `06_EXPORTS/` | sous-dossiers par ratio (9x16, 1x1, 16x9, pdf, png) |
| Publiés | `07_PUBLIES/` | copie finale + URL publication + date |
| Performance | `08_PERFORMANCE/` | screenshots stats, exports analytics |
| À définir | `09_PUBLICATION_A_DEFINIR/` | livrable prêt mais pas encore publié |
| Archives | `10_ARCHIVES/` | versions précédentes, refusées |

### Sous-dossiers `05_PRODUCTION/`

```
05_PRODUCTION/
├── articles_blog/
├── ugc/
├── cinematic/
├── carrousels/
├── reels_shorts/
├── ads/
├── site/
├── emails/
└── audits/
```

### Sous-dossiers `06_EXPORTS/`

```
06_EXPORTS/
├── 9x16/   ← Reels, TikTok, Stories
├── 1x1/    ← IG feed
├── 16x9/   ← YouTube, LinkedIn
├── pdf/    ← Audits, propositions
└── png/    ← Carrousels, visuels statiques
```

---

## 📈 LIVRABLE TRACKER (par projet)

Chaque projet a un fichier `_TRACKER.md` dans `01_PROJETS/{projet}/`.

**Format simple** :

```markdown
# [PROJET] — Tracker production

## En cours
| Date | Type | Titre | Étape | Échéance |
|------|------|-------|-------|----------|
| 2026-04-28 | article | "Rachat épave Bastia" | review | 2026-04-30 |
| 2026-04-29 | ugc | "Hook 1 - peur taxes" | draft | - |

## Livrés ce mois
| Date livré | Type | Titre | Publié sur | Status |
|------------|------|-------|-----------|--------|
| 2026-04-25 | article | "Casse auto Corse" | WP | Online |

## Pipeline (idées)
- ad Meta — angle "stress contrôle technique"
- carousel IG — "5 pièges revente épave"
```

---

## 💰 SUIVI ÉCONOMIQUE PAR LIVRABLE

Pour les livrables **vendus** (clients), tracker minimal :

| Champ | Exemple |
|-------|---------|
| Type | Audit Ads Express |
| Client | [Nom client] |
| Prix vendu | 590 € |
| Coût IA estimé | ~5 € (SurferSEO + Claude) |
| Temps humain | 3h × 50€ = 150€ |
| Outils utilisés | Claude Ads + SEMrush |
| Marge réelle | 590 - 5 - 150 = **435 €** |
| Date livré | 2026-04-30 |

→ Stocké dans `01_PROJETS/{projet}/08_PERFORMANCE/cash-tracker.md`.

---

## 🤖 ACTIONS MANUELLES vs AUTOMATISABLES

### Manuelles uniquement (pas automatisables)
- Validation client (brief, V1, V2, final)
- Décision GO/NO-GO sur génération payante
- Modification prix/stock/produits Shopify
- Envoi cold emails à de vrais prospects
- Signature contrats
- Publication sur RS clients (peut être planifié, pas autonome)

### Automatisables (avec validation au début)
- Génération article SEO (avec validation outline + final)
- Création carrousels en batch (validation maquette)
- Génération vidéos UGC (validation script + concept)
- Audits SEO/Ads en lecture seule
- Rapports hebdo
- Export multi-formats (Remotion)

### Routines lecture seule (priorité Master Stack)
Voir `PROMPTS_LIBRARY.md` section "Routines lecture seule".

⚠️ **Aucune routine autonome activée tant que** :
- Le projet pilote n'a pas validé le workflow
- L'audit exact des repos n'est pas fait
- GPT-5.5 n'a pas validé

---

## 🚦 ÉTATS DES LIVRABLES

| État | Signification | Action attendue |
|------|---------------|-----------------|
| 🆕 brief | Brief reçu, pas commencé | Démarrer prod |
| 🟡 draft | V1 produite | Review interne |
| 🟠 review | Reviewée, attente client | Validation client |
| 🟢 final | Validée, prête à publier | Publier ou ranger |
| 🚀 exported | Exportée tous formats | Publier ou livrer |
| ✅ published | Publiée | Mesurer perf |
| 📊 measured | Mesurée | Bilan + ajustement |

---

## 🔄 MISE À JOUR DU TRACKER (RÈGLE OBLIGATOIRE)

**Après chaque action sur un livrable**, mettre à jour le tracker du projet :

```
01_PROJETS/{projet}/_TRACKER.md
```

**Évènements qui déclenchent une MAJ** :
- Brief reçu
- Production démarrée
- V1 produite (draft)
- Review interne ou client
- Validation finale
- Export
- Publication
- Premières métriques (stats)

**Format minimal** :
```
[2026-04-28 14h30] [casse-auto-vhu] [article-001] [draft → review]
Note : envoyé pour review interne.
```

---

## 📋 CHECKLIST PRÉ-LIVRABLE (avant chaque production)

Avant de lancer une production importante :

- [ ] Brief client clair (objectif, cible, contrainte)
- [ ] Format final défini (taille, durée, ratio)
- [ ] Outils nécessaires disponibles
- [ ] Quota API vérifié si payant (HeyGen, ElevenLabs, etc.)
- [ ] Estimation coût production
- [ ] Estimation temps humain
- [ ] Lieu de rangement défini (sous-dossier exact)
- [ ] Nom du fichier respecte la convention

---

## 📋 CHECKLIST POST-LIVRABLE

Après chaque livrable produit :

- [ ] Fichier final dans le bon dossier
- [ ] Nom respecte la convention
- [ ] Tracker du projet à jour
- [ ] Backup automatique Google Drive (sync OK)
- [ ] Si vendu : marge calculée dans `cash-tracker.md`
- [ ] Si publié : URL + date dans `07_PUBLIES/`
- [ ] Apprentissage noté si workflow nouveau

---

## 🎯 PRIORITÉS CASH (rappel Master Stack)

Les **6 offres prioritaires** à pousser sur tes 24 projets et clients :

| # | Offre | Prix | Marge cible |
|---|-------|------|-------------|
| 1 | Audit IA / Site / Ads Express | 290-790 € | >70% |
| 2 | Pack Landing + WhatsApp | 990-1990 € | >60% |
| 3 | Pack Ads IA (20-30 visuels) | 390-990 € | >50% |
| 4 | Pack Optim SEO E-commerce | 590-2500 € | >55% |
| 5 | Site Premium + Acquisition | 3500-7500 € | >50% |
| 6 | Infrastructure IA croissance | 7500-15000 € + 1500-4000€/mois | >60% |

→ À tracker dans `00_SYSTEM/CASH_PIPELINE.md` (à créer plus tard quand on aura des clients).

---

## 📂 OÙ TROUVER QUOI (récapitulatif rapide)

| Je cherche... | C'est dans... |
|---------------|---------------|
| Tous les prompts utiles | `00_SYSTEM/PROMPTS_LIBRARY.md` |
| État du Studio | `00_SYSTEM/STUDIO_STATE.md` |
| Décisions verrouillées | `00_SYSTEM/DECISIONS_LOG.md` |
| Quel outil pour quoi | `00_SYSTEM/MAPPING_FORMATS_OUTILS.md` |
| Commandes utiles | `00_SYSTEM/CHEATSHEET_COMMANDES.md` |
| Master Stack vision | `00_SYSTEM/05_STACK_REFERENCES/` |
| Tracker d'un projet | `01_PROJETS/{projet}/_TRACKER.md` |
| Brief d'un projet | `01_PROJETS/{projet}/01_BRIEF/` |
| Livrables finaux d'un projet | `01_PROJETS/{projet}/06_EXPORTS/` |

---

## 📜 HISTORIQUE

| Date | Modification | Par |
|------|--------------|-----|
| 2026-04-26 | Création V1 (règles nommage + tracker projet + suivi cash) | Alain + Claude + GPT-5.5 |
