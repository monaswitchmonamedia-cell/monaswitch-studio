# VIDEOPOWER — MonaSwitch Studio

## But

Une commande pour transformer un lien vidéo en pack exploitable :

```text
/videopower URL
```

## Ce que la commande orchestre

```text
URL / fichier
  ↓
/analyze — détection marque + charte + logos + CTA + garde-fous
  ↓
yt-dlp — récupération vidéo/métadonnées quand l'accès le permet
  ↓
FFmpeg — audio + frames + changements de scène
  ↓
contact sheet + sélection screenshots
  ↓
/HOOK / RETENTION / MARKETING / VIRAL / COMPLIANCE
  ↓
ANALYSE.md
  ↓
2 briefs covers verticales 9:16
+ 2 briefs 16:9 si YouTube/paysage
  ↓
scene générative si utile
  ↓
OVERLAY VRAIS LOGOS
  ↓
captions + titres + hashtags + tags YouTube
  ↓
QA
```

## Installation locale Claude Code

Depuis PowerShell :

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
cd "G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\SCRIPTS"
.\Install-VideoPower.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -InstallMissing
```

Puis fermer/réouvrir Claude Code.

## Test

```text
/videopower https://youtu.be/VIDEO_ID
```

ou :

```text
/videopower https://www.instagram.com/reel/...
```

## Dépendance essentielle

`/videopower` ne recrée pas `/analyze`.

Il doit trouver :

```text
%USERPROFILE%\.claude\skills\analyze\SKILL.md
```

Si `/analyze` manque, le pipeline peut extraire une vidéo mais ne doit pas inventer la marque, la charte, les logos ou CTA.

## Defaults Félix

Quand aucune option n'est donnée :

- auto-route la marque ;
- analyse complète ;
- contact sheet ;
- screenshots clés ;
- fichier `ANALYSE.md` ;
- 2 angles covers 9:16 ;
- + 2 angles 16:9 pour YouTube ;
- captions Instagram/TikTok/Facebook/YouTube ;
- titres et tags YouTube ;
- QA logos/orthographe/conformité ;
- recommandation du meilleur angle.

## CasseAutoVHU — garde-fous

- vrais logos uniquement ;
- Caréco doit être `Caréco Grand Est` si c'est l'asset officiel sélectionné ;
- `pièces de réemploi`, jamais `pièces d'occasion` dans la communication CasseAutoVHU ;
- rémunération/valorisation : uniquement selon dossier/éligibilité quand applicable ;
- ne pas annoncer une zone ou un délai non vérifié.
