# MONASWITCH STUDIO — CHEATSHEET COMMANDES

> Garde cette page sous la main. Toutes les commandes utiles pour bosser sur le Studio.

---

## 🚀 OUVRIR UN PROJET (la commande la plus importante)

### Méthode 1 — Menu interactif (les 24 projets)

```powershell
cd C:\MonaSwitchSetup
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio"
```

→ Tape le numéro du projet (01-24), puis l'action (3 = Launch Claude Code).

### Méthode 2 — Ouverture directe d'un projet

```powershell
cd C:\MonaSwitchSetup

# Casse Auto VHU
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 01 -Action Claude

# New Addal
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 02 -Action Claude

# Flaak Keratopigmentation
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 03 -Action Claude

# Julien Marinetti
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 04 -Action Claude

# Le Vin en Bouche
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 05 -Action Claude

# MonaMedia
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 06 -Action Claude

# Ecocasse
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 07 -Action Claude

# A l'Ombra Calvi Marche
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 08 -Action Claude

# MyCrown Estates
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 09 -Action Claude

# MonaSwitch
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 10 -Action Claude

# Consulting Energies
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 11 -Action Claude

# Creation Societe Irlande
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 12 -Action Claude

# Chirurgie Refractive
.\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -Project 13 -Action Claude
```

(Idem pour 14-24 — projets secondaires)

---

## 🔄 ACTIONS DISPONIBLES POUR UN PROJET

Quand tu utilises Start-Studio, tu peux choisir :

| # | Action | Description |
|---|--------|-------------|
| 1 | Open folder in Explorer | Ouvre le dossier dans Windows Explorer |
| 2 | Open in VS Code | Ouvre dans VS Code |
| 3 | Launch Claude Code | Lance Claude Code dans le bon dossier |
| 4 | Just cd here | Reste dans PowerShell, ne lance rien |
| 5 | Open Explorer + VS Code + Claude Code | Tout en même temps |

Ou en flag direct : `-Action Claude` / `-Action Code` / `-Action Explorer` / `-Action Cd` / `-Action All`

---

## 🚪 QUITTER CLAUDE CODE

Dans la fenêtre Claude Code :
```
/quit
```

Ou utiliser `Ctrl+C` deux fois.

---

## 🔍 RELANCER UN AUDIT

```powershell
cd C:\MonaSwitchSetup
.\Audit-StudioGlobal.ps1
```

Avec confirmation auto (sans demander O/N) :
```powershell
.\Audit-StudioGlobal.ps1 -SkipConfirmation
```

Ouvrir le résumé après audit :
```powershell
notepad "C:\MonaSwitchSetup\AUDIT_GLOBAL_STUDIO_RESUME.md"
```

---

## 📂 OUVRIR LES FICHIERS SYSTÈME

```powershell
# État du Studio
notepad "G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\STUDIO_STATE.md"

# Journal des décisions
notepad "G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\DECISIONS_LOG.md"

# Mapping formats → outils
notepad "G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\MAPPING_FORMATS_OUTILS.md"

# Cette cheatsheet
notepad "G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\CHEATSHEET_COMMANDES.md"

# Priorités d'installation
notepad "G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\INSTALLATION_PRIORITIES.md"

# Ouvrir tout le dossier 00_SYSTEM
explorer "G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM"
```

---

## 🌐 OUVRIR UN PROJET DANS L'EXPLORATEUR DRIVE

```powershell
# Casse Auto VHU
explorer "G:\Mon Drive\MonaSwitch_Studio\01_PROJETS\01-casse-auto-vhu"

# MonaMedia
explorer "G:\Mon Drive\MonaSwitch_Studio\01_PROJETS\06-monamedia"

# Tous les projets
explorer "G:\Mon Drive\MonaSwitch_Studio\01_PROJETS"
```

---

## 🛠 COMMANDES UTILES PowerShell

```powershell
# Voir où je suis
pwd

# Lister les fichiers du dossier courant
dir
ls

# Aller dans un dossier
cd "C:\MonaSwitchSetup"

# Vérifier qu'un fichier existe
Test-Path "G:\Mon Drive\MonaSwitch_Studio\CLAUDE.md"

# Voir version d'un outil
node --version
npm --version
git --version
claude --version
```

---

## 🔧 PROBLÈMES FRÉQUENTS

### "Claude n'est pas reconnu"
PATH npm non chargé. Solution :
```powershell
$env:Path = [Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [Environment]::GetEnvironmentVariable("Path", "User")
claude --version
```

Ou plus simple : ferme PowerShell et rouvre une nouvelle fenêtre.

### "Script .ps1 n'est pas reconnu"
Tu n'es pas dans le bon dossier. Vérifie :
```powershell
pwd
dir
```

### Erreur ExecutionPolicy
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```
(à refaire à chaque nouvelle fenêtre PowerShell)

---

## 🤖 RÈGLE D'OR POUR TOUTE NOUVELLE CONVERSATION

Quand tu ouvres une **nouvelle conversation** Claude Code, Claude.ai, ou GPT-5.5 sur ce Studio, **dis-lui d'abord** :

```
Lis ces 3 fichiers avant de répondre :
- G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\STUDIO_STATE.md
- G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\DECISIONS_LOG.md
- G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\MAPPING_FORMATS_OUTILS.md

Confirme que tu as compris l'état actuel, les décisions verrouillées, et les workflows par format.
```

→ L'IA saura **immédiatement** où on en est. Plus jamais de redémarrage from scratch.
