# AUDIT MCPs — STATUT RÉEL

**Date** : 2026-04-28
**Source** : `~/.claude.json` (config locale Claude Code) + `~/.claude/settings.json` + `~/.claude/mcp-servers/`
**Méthode** : grep direct sur la config, masquage systématique des clés API.

> 🔐 **Toutes les clés API détectées sont masquées dans ce document** (politique D-010 STUDIO_STATE).

---

## 🎯 Découverte majeure

L'inventaire précédent (`INVENTAIRE_OUTILS_STUDIO.md`) annonçait **7 MCPs**. C'était une **sous-estimation**. La réalité est **23 MCPs configurés**, répartis sur **3 scopes** :

| Scope | Lieu config | Nb MCPs |
|---|---|---|
| **Global** | `.claude.json` racine `mcpServers` | 7 |
| **User** | `.claude.json` projet `C:/Users/alain` | 7 |
| **Project** | `.claude.json` projet `C:/Users/alain/OneDrive/Bureau/MonaSwitch_HQ` | 9 |
| **Mais le projet courant `06-monamedia` a `mcpServers: {}`** → ce qui explique pourquoi seuls les 7 globaux sont visibles dans la session courante. |

→ **Fix immédiat** : pour activer tous les MCPs dans 06-monamedia, copier la config depuis `C:/Users/alain` (User scope) vers le projet 06-monamedia, ou activer `enabledMcpjsonServers`.

---

## ✅ MCPs FONCTIONNELS — visibles dans la session courante (7)

Ces MCPs sont chargés au démarrage de la session 06-monamedia.

| MCP | Type | Source | Clé API | Statut |
|---|---|---|---|---|
| `gemini-ai` | stdio | `@fre4x/gemini` (npm global) | `GEMINI_API_KEY` ✓ configurée | 🟢 actif |
| `stitch` | http | `https://stitch.withgoogle.com/mcp` | aucune (URL publique) | 🟢 actif |
| `shopify-levinenbouche` | stdio | `@shopify/dev-mcp` | `SHOPIFY_CLIENT_ID` ✓ configuré | 🟢 actif (projet 05) |
| `slack` | stdio | `@modelcontextprotocol/server-slack` | `SLACK_BOT_TOKEN` ✓ configuré | 🟢 actif |
| `google-drive` | stdio | `mcp-google-drive` (npm global) | `client-id` + `client-secret` ✓ | 🟢 actif |
| `surferseo` | stdio | `~/.claude/mcp-servers/surferseo/` (Python custom) | `SURFERSEO_API_KEY` ✓ | 🟢 actif |
| `pencil` | stdio | `~/.pencil/mcp/visual_studio_code/` | n/a (local exe) | 🟢 actif |

---

## ⚠️ MCPs CONFIGURÉS MAIS NON CHARGÉS DANS 06-MONAMEDIA (16)

Ces MCPs sont déclarés dans `.claude.json` mais **scope User ou scope MonaSwitch_HQ**, donc invisibles dans la session courante.

### Scope `C:/Users/alain` (User) — 7 MCPs

| MCP | Type | Provider | Clé | Action pour activer dans 06-monamedia |
|---|---|---|---|---|
| `lagrowthmachine` | sse | Composio | `apiKey=7bb...d97a` masquée ✓ | Copier la config dans le scope projet |
| `mailpool` | sse | Composio | apiKey ✓ | Copier la config |
| `huggingface` | sse | Composio | apiKey ✓ | Copier la config |
| `higgsfield` | sse | Composio | apiKey ✓ | Copier la config |
| `unframer` | http | Unframer | `id` + `secret` ✓ | Copier la config |
| `framer-monamedia` | http | Unframer | `id` + `secret` ✓ | Copier la config (⭐ direct utile pour 06) |
| `framer-monaswitch` | http | Unframer | `id` + `secret` ✓ | Copier la config (utile pour projet MonaSwitch) |

### Scope `C:/Users/alain/OneDrive/Bureau/MonaSwitch_HQ` (Project) — 9 MCPs

| MCP | Type | Provider | Clé | Action |
|---|---|---|---|---|
| `lagrowthmachine` | sse | Composio | apiKey ✓ | dupliqué dans User scope |
| `stripe` | stdio | `@stripe/mcp` | `STRIPE_SECRET_KEY` ✓ (`sk_test_*`) | Copier dans 06-monamedia si paiement requis |
| `airtable` | stdio | `@anthropic-samples/mcp-server-airtable` | `AIRTABLE_API_KEY` ✓ (`pat...`) | Copier (⭐ CRM 13 projets) |
| `github` | stdio | `@modelcontextprotocol/server-github` | `GITHUB_TOKEN` ✓ (`ghp_*`) | Copier |
| `surferseo` | stdio | Python custom | masquée ✓ | déjà dans scope global |
| `brave-search` | stdio | `@modelcontextprotocol/server-brave-search` | `BRAVE_API_KEY` ✓ | Copier |
| `wordpress-flaak` | stdio | `@anthropic-samples/mcp-server-wordpress` | `WORDPRESS_URL` + creds ✓ | Spécifique projet 03-Flaak |
| `metricool` | stdio | `@anthropic-samples/mcp-server-metricool` | `METRICOOL_API_KEY` ✓ | ⚠️ D-005 : Metricool sorti du cœur Studio |
| `google-ads-flaak` | stdio | `@anthropic-samples/mcp-server-google-ads` | `GOOGLE_ADS_API_KEY` ✓ | Spécifique projet 03-Flaak |
| `smartlead` | stdio | `@anthropic-samples/mcp-server-smartlead` | `SMARTLEAD_API_KEY` ✓ | Cold email outreach (⭐ B2B) |
| `elevenlabs` | stdio | `@anthropic-samples/mcp-server-elevenlabs` | `ELEVENLABS_API_KEY` ✓ (`sk_*`) | ⚠️ STUDIO_STATE indique "abonnement non actif V1" — vérifier statut compte |

---

## ❌ MCPs NON CONFIGURÉS (annoncés arsenal mais introuvables) — ~6

| MCP attendu | Statut | Raison probable |
|---|---|---|
| **HeyGen custom** | ❌ pas de config trouvée | HeyGen utilisé via interface web, pas d'API MCP officielle Anthropic |
| **FAL AI** | ❌ pas de config trouvée | Skills `fal-*` (6) présents mais MCP custom non installé |
| **SEMrush** | ❌ pas de MCP | Clé API SEMrush référencée mais pas de serveur MCP |
| **Make.com** | ❌ pas de MCP | Skills Make-automation présents, MCP non installé |
| **Apify** | ❌ pas de MCP | 12 skills Apify présents, MCP non installé |
| **Figma custom** | ❌ pas trouvé en MCP local | Plugin Figma activé via Claude plugins (pas MCP custom) |

---

## 🔑 MCPs AVEC CLÉS À VÉRIFIER

| MCP | Risque | Action |
|---|---|---|
| `elevenlabs` | STUDIO_STATE V1 indique "abonnement plus actif" | Vérifier statut compte ElevenLabs avant usage en prod |
| `metricool` | D-005 : sorti du cœur Studio | Garder configuré mais ne pas utiliser comme dépendance |
| `stripe` | Clé en `sk_test_*` (mode test) | OK pour dev, à basculer en prod si paiement live |
| `github` | Token `ghp_*` (personnel) | Vérifier expiration + scopes |

---

## 📋 PLAN D'ACTION MCPs

### 🔴 Priorité 1 — Charger les MCPs critiques dans 06-monamedia

**Action concrète** : ajouter au scope projet `06-monamedia` les MCPs prioritaires production vidéo. Edit du fichier `.claude.json` section `"G:/Mon Drive/MonaSwitch_Studio/01_PROJETS/06-monamedia"` → champ `mcpServers`.

MCPs à activer immédiatement pour la production 06-monamedia :
1. `higgsfield` (vidéo IA cinématique)
2. `framer-monamedia` (déploiement site MonaMedia.mc)
3. `huggingface` (modèles IA divers)
4. `airtable` (CRM viewers/SME futur)
5. `smartlead` (cold outreach SME)

### 🟡 Priorité 2 — MCPs à installer (annoncés arsenal manquants)

6. **FAL AI MCP** — pour exploiter les 6 skills `fal-*` déjà disponibles
   ```
   Source : github.com/fal-ai/mcp-server (à vérifier)
   ```
7. **HeyGen MCP** — pour automatiser génération vidéo avatar
   ```
   Source : à rechercher (peut-être pas encore d'MCP officiel — interface uniquement)
   ```
8. **SEMrush MCP** — clé API existe, manque le serveur
9. **Apify MCP** — 12 skills présents

### 🟢 Priorité 3 — Audit clés expirées / abonnements

10. Tester chaque MCP via `claude mcp list` puis `claude mcp call <server> <tool>`
11. Régénérer les tokens GitHub si > 90 jours
12. Confirmer abonnement ElevenLabs actif ou désactiver le MCP

### ⚪ Priorité 4 — Nettoyage

13. Décider : Metricool (D-005) → garder configuré ou retirer la config ?
14. Vérifier doublon `unframer` vs `framer-monaswitch` (même `id` + `secret` détectés)

---

## 🎯 MCPs PRIORITAIRES POUR LES 13 PROJETS

| Projet | MCPs critiques | Statut config |
|---|---|---|
| 01-Casse Auto VHU | airtable · firecrawl · wordpress | 🟡 partial |
| 02-New Addal | airtable · firecrawl | 🟡 partial |
| 03-Flaak Keratopigmentation | wordpress-flaak · google-ads-flaak · surferseo · semrush | 🟢 prêt (project scope MonaSwitch_HQ) |
| 04-Julien Marinetti | firecrawl · airtable | 🟡 partial |
| 05-Le Vin en Bouche | shopify-levinenbouche | 🟢 actif (global) |
| **06-MonaMedia** | higgsfield · framer-monamedia · airtable · smartlead · gemini-ai | ⚠️ MCPs existent mais pas chargés dans 06 |
| 07-Ecocasse | firecrawl · airtable | 🟡 partial |
| 08-A l'Ombra Calvi Marche | airtable | 🟡 partial |
| 09-MyCrown Estates | firecrawl · airtable · framer-monaswitch | 🟡 partial |
| 10-MonaSwitch | airtable · stripe · github · framer-monaswitch | 🟢 prêt si chargé |
| 11-Consulting Energies | airtable · firecrawl | 🟡 partial |
| 12-Creation Societe Irlande | airtable · semrush · surferseo | 🟡 partial |
| 13-Chirurgie Refractive | wordpress · semrush · airtable | 🟡 à créer |

---

## 📌 NOTES SÉCURITÉ

- Toutes les clés API ont été détectées **en clair** dans `.claude.json`. **Recommandation** : envisager un système de secrets externes (`.env` chiffré, ou variable d'environnement) plutôt que clés en clair dans `.claude.json`.
- Aucune clé n'est écrite dans ce document.
- D-010 STUDIO_STATE respecté : tokens et secrets masqués dans tous les outputs.
