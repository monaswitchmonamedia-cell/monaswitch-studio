# MONASWITCH STUDIO - SANDBOX REPOS STATUS

> Rapport de clonage sandbox des repos GitHub a auditer.
> AUCUNE installation, AUCUNE activation, AUCUNE API.

**Date du rapport** : 2026-04-26 23:52
**Validation** : Claude Opus 4.7 + GPT-5.5
**Code stocke en local** : `C:\MonaSwitch_Sandbox\repos`
**Rapport stocke dans Drive** : `G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\03_REPOS_GITHUB\SANDBOX_REPOS_STATUS.md`

---

## STATISTIQUES GLOBALES

| Indicateur | Valeur |
|------------|--------|
| Repos a cloner | 13 |
| Repos clones avec succes | 13 |
| Repos deja presents | 0 |
| Erreurs | 0 |
| Placeholders URL a confirmer | 4 |
| Taille totale clones | ~701.9 Mo |

---

## TABLEAU DETAILLE DES REPOS

| # | Repo | Statut | Categorie | Priorite | Risque | Besoin API | Activation |
|---|------|--------|-----------|----------|--------|-----------|-----------|
| 01 | `anthropics/claude-code-security-review` | clone | securite | A | nul | non | Oui (audit puis activation) |
| 02 | `lackeyjb/playwright-skill` | clone | QA | A+ | nul | non | Oui (audit puis activation) |
| 03 | `obra/superpowers` | clone | orchestration | A- | faible | non | Plus tard (audit obligatoire) |
| 04 | `daymade/claude-code-skills` | clone | infra | B+ | faible | non | Plus tard |
| 05 | `altmbr/claude-research-skill` | clone | recherche | B+ | nul | non | Oui (audit puis activation) |
| 06 | `zubair-trabzada/ai-sales-team-claude` | clone | sales | A+ | moyen | possible | Plus tard (envoi auto a securiser) |
| 07 | `zubair-trabzada/ai-marketing-claude` | clone | marketing | A | faible | non | Oui (audit puis activation) |
| 08 | `AgriciDaniel/claude-ads` | clone | ads | A | faible | non | Oui (audit puis activation) |
| 09 | `AgriciDaniel/claude-seo` | clone | SEO | A- | nul | non | Oui (audit puis activation) |
| 10 | `Shopify/Shopify-AI-Toolkit` | clone | ecommerce | A+ | eleve | oui | Plus tard (lecture seule + backup obligatoire) |
| 11 | `VoltAgent/awesome-claude-design` | clone | design | A- | nul | non | Oui (reference) |
| 12 | `wuyoscar/gpt_image_2_skill` | clone | image | A | moyen | oui | Plus tard (cout OpenAI a controler) |
| 13 | `heygen-com/hyperframes` | clone | video | A- | faible | non | Plus tard (audit avant activation) |

---

## CHEMINS LOCAUX

- **01 - anthropics/claude-code-security-review** : `C:\MonaSwitch_Sandbox\repos\01-security-review-anthropic`
- **02 - lackeyjb/playwright-skill** : `C:\MonaSwitch_Sandbox\repos\02-playwright-skill`
- **03 - obra/superpowers** : `C:\MonaSwitch_Sandbox\repos\03-superpowers`
- **04 - daymade/claude-code-skills** : `C:\MonaSwitch_Sandbox\repos\04-skill-creator-daymade`
- **05 - altmbr/claude-research-skill** : `C:\MonaSwitch_Sandbox\repos\05-research-skill`
- **06 - zubair-trabzada/ai-sales-team-claude** : `C:\MonaSwitch_Sandbox\repos\06-ai-sales-team`
- **07 - zubair-trabzada/ai-marketing-claude** : `C:\MonaSwitch_Sandbox\repos\07-ai-marketing-suite`
- **08 - AgriciDaniel/claude-ads** : `C:\MonaSwitch_Sandbox\repos\08-claude-ads-audit`
- **09 - AgriciDaniel/claude-seo** : `C:\MonaSwitch_Sandbox\repos\09-claude-seo`
- **10 - Shopify/Shopify-AI-Toolkit** : `C:\MonaSwitch_Sandbox\repos\10-shopify-ai-toolkit`
- **11 - VoltAgent/awesome-claude-design** : `C:\MonaSwitch_Sandbox\repos\11-awesome-claude-design`
- **12 - wuyoscar/gpt_image_2_skill** : `C:\MonaSwitch_Sandbox\repos\12-gpt-image-2-skill`
- **13 - heygen-com/hyperframes** : `C:\MonaSwitch_Sandbox\repos\13-heygen-hyperframes`

---

## NOTES SPECIALES (placeholders)

### frontend-design-NOTE
Frontend Design est un skill inclus dans le repo officiel anthropics/claude-code (sous plugins/frontend-design/). Pas a cloner separement. A consulter directement dans Claude Code.

Fichier : `C:\MonaSwitch_Sandbox\repos\_URL_A_CONFIRMER\frontend-design-NOTE.md`

### mcp-builder-NOTE
MCP Builder : URL anthropics/claude-plugins-official a clarifier. Peut etre deja inclus dans claude-code officiel. A verifier avant clone.

Fichier : `C:\MonaSwitch_Sandbox\repos\_URL_A_CONFIRMER\mcp-builder-NOTE.md`

### google-stitch-skills-PLACEHOLDER
Google Stitch Skills : URL non confirmee (google-labs-code/stitch-skills non verifie). Recherche manuelle source officielle requise avant clone.

Fichier : `C:\MonaSwitch_Sandbox\repos\_URL_A_CONFIRMER\google-stitch-skills-PLACEHOLDER.md`

### claude-video-vision-PLACEHOLDER
Claude Video Vision : URL non confirmee (jordanrendric/claude-video-vision non verifie). Recherche manuelle source officielle requise avant clone.

Fichier : `C:\MonaSwitch_Sandbox\repos\_URL_A_CONFIRMER\claude-video-vision-PLACEHOLDER.md`


---

## REGLES DE SECURITE RESPECTEES

- [x] git clone --depth 1 uniquement (shallow, lecture seule)
- [x] Si repo deja present : git status seulement (aucun pull, aucun overwrite)
- [x] AUCUN npm install, pip install, pnpm install, bun install
- [x] AUCUNE copie vers ~/.claude/skills
- [x] AUCUNE activation de plugin
- [x] AUCUNE API connectee
- [x] AUCUNE cle ecrite
- [x] AUCUNE routine activee
- [x] AUCUN delete/move hors sandbox

---

## PROCHAINES ACTIONS RECOMMANDEES

1. **Confirmer les URLs incertaines** :
   - Google Stitch Skills (recherche manuelle)
   - Claude Video Vision (recherche manuelle)
   - MCP Builder (clarifier vs claude-code officiel)

2. **Auditer chaque repo clone** :
   - Lire le README
   - Verifier la qualite et l'utilite reelle
   - Identifier les dependances et les risques

3. **Decider quels activer** :
   - Activation immediate : `Oui (audit puis activation)`
   - Activation differee : `Plus tard`
   - Procedure d'activation : copie manuelle vers `~/.claude/skills/` UNIQUEMENT apres validation

4. **Mettre a jour les registres** :
   - `REPOS_TO_AUDIT_NEXT.md` avec les decisions prises
   - `REPOS_GITHUB_REGISTRY.md` avec les nouveaux repos auditifies

5. **Pour les repos avec `Plus tard` ou risque eleve** :
   - Shopify AI Toolkit : tester en LECTURE SEULE d'abord, backup CSV obligatoire
   - GPT Image 2 : limiter batch initial a 5 generations, surveiller cout
   - AI Sales Team : DESACTIVER tout envoi auto avant test
   - Hyperframes : tester sur HTML simple sans donnees sensibles

---

## HISTORIQUE

| Date | Modification | Par |
|------|--------------|-----|
| 2026-04-26 23:52 | Creation initiale, 13 repos clones, 4 placeholders | Script INSTALL_REPOS_SANDBOX.ps1 |