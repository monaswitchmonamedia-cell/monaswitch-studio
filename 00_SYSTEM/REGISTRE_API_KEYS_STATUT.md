# MONASWITCH STUDIO — REGISTRE CLÉS API (STATUT SEULEMENT)

> **AUCUNE VALEUR DE CLÉ N'EST AFFICHÉE ICI.**
> Statut + gouvernance uniquement.

**Créé le** : 2026-04-26
**Dernière mise à jour** : 2026-04-26 (enrichi avec Master Stack — champs gouvernance ajoutés)

📌 **Source ajoutée** : `MonaSwitch_Studio_IA_Master_Stack.md` (placée dans `00_SYSTEM/05_STACK_REFERENCES/`)

---

## 🔒 RÈGLES DE SÉCURITÉ

- ❌ JAMAIS de valeur de clé en clair
- ❌ JAMAIS de token complet
- ❌ JAMAIS de password
- ✅ Statut uniquement
- ✅ Gouvernance par clé (coût, permissions, rollback...)

---

## 📋 GOUVERNANCE — Champs obligatoires (du Master Stack)

Pour CHAQUE clé API, on documente :

```text
- Nom de la clé
- Outil concerné
- Projets concernés
- Coût fixe (mensuel/annuel)
- Coût variable (par appel/génération)
- Permissions accordées
- Lecture seule possible ?
- Données accessibles
- Validation humaine requise (oui/non/conditionnel)
- Backup procédure
- Rollback procédure
- Statut : présente / absente / via MCP / à vérifier / non nécessaire
- Date dernière revue
```

---

## 📊 LÉGENDE STATUTS
- 🟢 **PRÉSENTE** : configurée et fonctionnelle (env var)
- 🟡 **À VÉRIFIER** : potentiellement configurée
- 🔵 **VIA MCP** : géré par MCP Claude.ai, pas besoin env var
- ⚪ **NON CONFIGURÉE** : à créer si besoin
- ⚫ **NON NÉCESSAIRE** : pas besoin actuellement

---

## CLÉS — INTELLIGENCE ARTIFICIELLE

| Clé | Statut | Coût fixe | Coût variable | Validation humaine | Notes |
|-----|--------|-----------|---------------|-------------------|-------|
| ANTHROPIC_API_KEY | ⚫ Non nécessaire | - | - | N/A | Claude Max (200€/mois) suffit |
| OPENAI_API_KEY | ⚫ Non nécessaire | - | - | N/A | ChatGPT Pro (30€/mois) suffit |
| GOOGLE_API_KEY | ⚫ Non nécessaire | - | - | N/A | Gemini via MCP |
| GEMINI_API_KEY | 🟢 PRÉSENTE | 0 (free tier) | À surveiller | Oui pour batch | Confirmée par audit local |
| HEYGEN_API_KEY | 🔵 VIA MCP | ~89$/mois | Crédits | OUI (vidéo coûte) | Pas en env var |
| ELEVENLABS_API_KEY | ⚪ Non configurée | Plan actif | À surveiller | Oui pour TTS batch | À créer si scripts auto |
| HIGGSFIELD_API_KEY | ⚪ Non configurée | Crédits | Par génération | OBLIGATOIRE | Utilisé via interface |

---

## CLÉS — SEO / MARKETING

| Clé | Statut | Coût | Validation | Notes |
|-----|--------|------|------------|-------|
| SEMRUSH_API_KEY | 🟡 À VÉRIFIER | Plan actif | Lecture seule | Vérifier quota actuel |
| SURFER_API_KEY | 🟡 À VÉRIFIER | Plan actif | Lecture seule | Clé existe d'après utilisateur |
| SURFERSEO_API_KEY | 🟡 À VÉRIFIER | - | - | Alias possible de SURFER_API_KEY |
| FIRECRAWL_API_KEY | ⚪ Non configurée | Selon volume | Pour scraping auto | Pas urgent |

---

## CLÉS — PLATEFORMES

| Clé | Statut | Validation | Notes |
|-----|--------|------------|-------|
| GITHUB_TOKEN | ⚪ Non configurée | Oui pour push | À créer quand on push des repos privés |
| SLACK_BOT_TOKEN | 🔵 VIA MCP | - | Pas besoin en env var |
| AIRTABLE_API_KEY | 🔵 VIA MCP | - | Pas besoin en env var |
| NOTION_API_KEY | ⚪ Non configurée | - | Pas dans MCPs visibles |
| MAKE_API_KEY | 🔵 VIA MCP | Oui pour scénarios coûteux | Pas besoin en env var |
| ZAPIER_API_KEY | ⚪ Non configurée | - | Make préféré |

---

## CLÉS — PAIEMENT (CRITIQUE)

| Clé | Statut | Validation | Notes |
|-----|--------|------------|-------|
| STRIPE_API_KEY (TEST) | 🔵 VIA MCP | Oui | TEST mode |
| STRIPE_SECRET_KEY (LIVE) | ⚪ Non configurée | OBLIGATOIRE | Quand projet prêt à encaisser |

🚨 **Règle Master Stack** : modification prix/stock/commandes/produits NÉCESSITE validation humaine explicite.

---

## CLÉS — INFRASTRUCTURE

| Clé | Statut | Notes |
|-----|--------|-------|
| Vercel | 🔵 VIA Plugin | Déploiement |
| Netlify | 🔵 VIA MCP | - |
| Supabase | 🔵 VIA MCP | - |

---

## 🔧 CONFIGURATION (méthode sécurisée)

### Définir une clé (User scope persistant)
```powershell
setx NOM_DE_LA_CLE "valeur_de_la_cle"
```
**Puis fermer/rouvrir PowerShell**.

### Vérifier présence (sans afficher valeur)
```powershell
if ($env:HEYGEN_API_KEY) { "PRESENT" } else { "ABSENT" }
```

### NE JAMAIS faire
- ❌ `echo $env:HEYGEN_API_KEY` (affiche la valeur)
- ❌ Coller une clé dans un script versionné
- ❌ Mettre une clé dans `CLAUDE.md` ou tout fichier Markdown
- ❌ Synchroniser une clé via cloud sans validation

---

## 📋 PROCHAINES VÉRIFICATIONS

Faire **manuellement, projet par projet, quand on en a besoin** :

1. **Quand on attaque le 1er projet pilote** :
   - Vérifier les `.env` locaux du projet
   - Lister les clés présentes (sans afficher valeurs)
   - Documenter ici lesquelles sont utilisées

2. **Quand on configure ElevenLabs en script** :
   - Récupérer clé depuis dashboard ElevenLabs
   - `setx ELEVENLABS_API_KEY "..."`
   - Mettre à jour ce registre : ⚪ → 🟢

3. **Quand on push un repo GitHub privé** :
   - Créer GITHUB_TOKEN (permissions minimales)
   - `setx GITHUB_TOKEN "ghp_..."`
   - Mettre à jour ce registre

---

## 📜 HISTORIQUE

| Date | Modification | Par |
|------|--------------|-----|
| 2026-04-26 | Création initiale | Alain + Claude + GPT-5.5 |
| 2026-04-26 | Enrichi avec gouvernance Master Stack (coûts, permissions, rollback) | Alain + Claude + GPT-5.5 |
