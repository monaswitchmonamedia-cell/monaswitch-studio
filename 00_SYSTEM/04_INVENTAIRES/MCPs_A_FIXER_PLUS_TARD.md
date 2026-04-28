# MCPs à fixer plus tard

**Date** : 2026-04-28
**Contexte** : Nettoyage MCPs cassés après audit. 3 entrées supprimées du `.claude.json`. Ce fichier liste ce qui reste à régler quand on en aura besoin.

---

## 1. MCPs supprimés (à reconfigurer correctement)

### airtable
- **Problème** : paquet `@anthropic-samples/mcp-server-airtable` n'existe pas sur npm.
- **Fix** : installer `airtable-mcp-server` (npm, paquet réel) à la place.
- **Commande** :
  ```bash
  claude mcp add airtable --command "npx -y airtable-mcp-server" --env AIRTABLE_API_KEY=<token>
  ```
- **Quand** : quand on a besoin d'automatiser une base Airtable.

### smartlead
- **Problème** : paquet `@anthropic-samples/mcp-server-smartlead` n'existe pas sur npm.
- **Fix** : 2 options
  - Passer par Make/n8n avec un webhook Smartlead.
  - Écrire un MCP custom (Smartlead a une REST API documentée).
- **Quand** : quand on lance les séquences cold email B2B.

### slack (doublon)
- **Problème** : doublon avec `plugin:slack` (HTTP officiel) qui marche déjà après OAuth.
- **Fix** : ne pas remettre. Utiliser `plugin:slack`.

---

## 2. MCPs à régénérer (clé Composio)

### higgsfield
- **Statut** : ✗ Failed to connect
- **Cause probable** : clé Composio `7bb25569-82c1-49e6-9009-e09d5357d97a` expirée/révoquée.
- **Fix** : régénérer une nouvelle clé sur https://composio.dev → settings → API keys, puis mettre à jour l'URL dans `.claude.json`.

### huggingface
- **Statut** : ✗ Failed to connect
- **Cause** : même clé Composio expirée.
- **Fix** : régénérer la même clé Composio (elle gère les deux), mettre à jour l'URL dans `.claude.json`.

---

## 3. MCPs OAuth en attente (9)

Ces serveurs sont en `! Needs authentication`. Faire le flow OAuth uniquement quand on en a besoin sur un projet :

| MCP | Quand l'activer |
|---|---|
| `plugin:slack` | Pour publier dans #studio_slack |
| `plugin:figma` | Pour designs MonaSwitch / clients |
| `plugin:stripe` | Pour intégrations paiement |
| `plugin:linear` | Pour gestion issues techniques |
| `plugin:asana` | Pour gestion projets clients |
| `plugin:supabase` | Pour BDD MonaSwitch / clients |
| `plugin:sentry` | Pour monitoring erreurs prod |
| `plugin:posthog` | Pour analytics produits |
| `plugin:atlassian` | Pour Jira / Confluence (si besoin) |

**Comment activer** : `claude mcp` → menu → choisir le serveur → suivre le flow OAuth dans le navigateur.

---

## 4. MCPs cassés mais GARDÉS dans `.claude.json` (à diagnostiquer)

- `plugin:github` — `api.githubcopilot.com/mcp/` ✗ Failed → vérifier si auth GitHub Copilot est active
- `plugin:greptile` — vérifier clé API Greptile
- `plugin:serena` — `uvx` doit être installé (`pipx install uv`)
- `stitch` — Google Stitch en preview, peut-être indisponible
- (`higgsfield`, `huggingface` traités au point 2)

---

## 5. MCPs FONCTIONNELS confirmés ✓

context7, playwright, episodic-memory, firebase, gemini-ai, shopify-levinenbouche, google-drive, surferseo, pencil, **framer-monamedia**.

---

## Fichier backup

`.claude.json` sauvegardé avant nettoyage :
`C:\Users\alain\.claude.json.backup-cleanup-2026-04-28`

Pour restaurer :
```bash
cp "C:\Users\alain\.claude.json.backup-cleanup-2026-04-28" "C:\Users\alain\.claude.json"
```
