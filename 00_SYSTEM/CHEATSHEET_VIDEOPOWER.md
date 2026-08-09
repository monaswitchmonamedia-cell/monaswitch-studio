# MONASWITCH — CHEATSHEET `/videopower`

## Installation / mise à jour

Dans PowerShell :

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
cd "G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\SCRIPTS"
.\Install-VideoPower.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -InstallMissing -Force
```

Puis **fermer et rouvrir Claude Code**.

## Commande normale

```text
/videopower https://youtu.be/...
```

```text
/videopower https://www.instagram.com/reel/...
```

```text
/videopower https://www.tiktok.com/@compte/video/...
```

```text
/videopower https://www.facebook.com/reel/...
```

## Fichier local

```text
/videopower G:\Mon Drive\MonaSwitch_Studio\01_PROJETS\01-casse-auto-vhu\03_SOURCES_RAW\videos\video.mp4
```

## Ce que ça fait par défaut

1. appelle la logique `/analyze` ;
2. retrouve la bonne marque ;
3. charge charte + vrais logos + CTA + garde-fous ;
4. récupère la vidéo ;
5. extrait audio + screenshots + scènes ;
6. crée un contact sheet ;
7. analyse hook/rétention/marketing/viral ;
8. classe les meilleurs screenshots ;
9. crée `ANALYSE.md` ;
10. prépare 2 covers 9:16 ;
11. si YouTube : prépare aussi 2 covers 16:9 ;
12. prépare captions/titres/hashtags/tags ;
13. QA final.

## Raccourcis de demande

```text
/videopower URL -- analyse uniquement
```

```text
/videopower URL -- covers uniquement après analyse
```

```text
/videopower URL -- Casse Auto VHU, 2 covers verticales + 2 YouTube
```

Les options ci-dessus sont formulées en langage naturel : la skill interprète le besoin, le script déterministe gère uniquement l'ingestion.

## Diagnostic

Vérifier la skill :

```powershell
Test-Path "$env:USERPROFILE\.claude\skills\videopower\SKILL.md"
```

Vérifier `/analyze` :

```powershell
Test-Path "$env:USERPROFILE\.claude\skills\analyze\SKILL.md"
```

Vérifier outils :

```powershell
python --version
ffmpeg -version
yt-dlp --version
claude --version
```

## Règle

`/videopower` = orchestre.

`/analyze` = source de vérité marque/charte/logos/CTA/EXTRACT-REMIX.

On ne duplique pas `/analyze`.
