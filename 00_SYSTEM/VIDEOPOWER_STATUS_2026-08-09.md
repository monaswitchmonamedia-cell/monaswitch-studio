# MONASWITCH STUDIO — VIDEOPOWER STATUS

Date de vérification : 2026-08-09
Statut : **CONSTRUIT / REPO PRÉSENT / INGEST LOCAL/URL DIRECT VALIDÉ / YOUTUBE GITHUB RUNNER À CORRIGER**

## Éléments vérifiés

- Repo : `monaswitchmonamedia-cell/monaswitch-studio`
- Skill repo : `00_SYSTEM/SKILLS/videopower/SKILL.md`
- Installateur Windows/Claude Code : `00_SYSTEM/SCRIPTS/Install-VideoPower.ps1`
- Cheatsheet : `00_SYSTEM/CHEATSHEET_VIDEOPOWER.md`
- Workflow distant : `.github/workflows/videopower-remote.yml`
- Dossier des runs distants : `VIDEOPOWER_RUNS/`
- Run de contrôle #5 sur MP4 public direct : `INGEST_OK`

## Validation du 09/08/2026 sur YouTube

Deux tests ont été déclenchés sur `https://youtu.be/jlYbnWJf7HA` :

- issue #6 avec le lien contenant le paramètre partagé par l'utilisateur ;
- issue #7 avec l'URL YouTube canonique.

Dans les deux cas, le runner GitHub a correctement passé :

- checkout ;
- Python 3.12 ;
- installation FFmpeg ;
- installation des dépendances VideoPower ;
- lancement du provider PO-token ;
- parsing de la demande.

L'échec intervient uniquement à l'étape **Run deterministic ingest** pour YouTube.

Conclusion : le pipeline VideoPower est bien construit, mais **la récupération directe YouTube depuis l'IP d'un runner GitHub n'est pas considérée comme validée**. YouTube peut bloquer ou challenger des IPs de datacenter même avec un provider PO-token. Le moteur local Claude Code reste la voie privilégiée pour les liens qui échouent sur GitHub Actions.

Ne jamais annoncer « YouTube distant validé » tant qu'un run YouTube réel n'a pas retourné `INGEST_OK`.

## Rôle de /videopower

`/videopower` orchestre :

1. lecture de `/analyze` ;
2. résolution de la marque/projet ;
3. chargement charte + vrais logos + CTA + garde-fous ;
4. ingestion URL YouTube / Instagram / TikTok / Facebook ou fichier local ;
5. extraction métadonnées, audio, frames régulières, changements de scènes et contact sheet ;
6. analyse `/HOOK /STRUCTURE /RETENTION /EMOTION /MARKETING /VIRAL /COMPLIANCE /ASSETS` ;
7. ranking des screenshots ;
8. création `ANALYSE.md` ;
9. briefs de covers A/B 9:16 ;
10. covers A/B 16:9 pour YouTube/paysage ;
11. captions, titres, hashtags, tags YouTube ;
12. QA logos / orthographe / conformité / lisibilité.

## Hiérarchie verrouillée

- `/analyze` = source de vérité marque, charte, logos, CTA, EXTRACT/REMIX et conformité.
- `/videopower` = ingestion et orchestration vidéo.
- `/videopower` ne doit jamais recréer ou écraser `/analyze`.

## Moteur distant

Le workflow GitHub `VideoPower Remote Engine` installe automatiquement sur le runner :

- Python 3.12 ;
- FFmpeg / FFprobe ;
- dépendances `videopower` ;
- yt-dlp ;
- `bgutil-ytdlp-pot-provider` ;
- provider PO-token YouTube.

Il traite les contenus accessibles sans contourner les restrictions d'accès et commit uniquement screenshots + métadonnées, pas la vidéo/audio source.

## Installation locale Claude Code

Dans PowerShell :

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
cd "G:\Mon Drive\MonaSwitch_Studio\00_SYSTEM\SCRIPTS"
.\Install-VideoPower.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -InstallMissing -Force
```

Puis fermer et rouvrir Claude Code.

Diagnostic :

```powershell
Test-Path "$env:USERPROFILE\.claude\skills\videopower\SKILL.md"
Test-Path "$env:USERPROFILE\.claude\skills\analyze\SKILL.md"
python --version
ffmpeg -version
yt-dlp --version
claude --version
```

## Commande normale

```text
/videopower https://youtu.be/...
/videopower https://www.instagram.com/reel/...
/videopower https://www.tiktok.com/@compte/video/...
/videopower https://www.facebook.com/reel/...
```

## Règle CasseAutoVHU

- vrais logos uniquement ;
- `CasseAutoVHU` orthographié exactement ;
- `Caréco Grand Est` réel ;
- `pièces de réemploi`, jamais `pièces d'occasion` dans la communication CasseAutoVHU ;
- aucune rémunération/valorisation garantie si le dossier ne la garantit pas.

## Conclusion

Le système `/videopower` existe déjà et ses fichiers sont persistés dans GitHub. Le run de contrôle sur une URL MP4 publique est `INGEST_OK`. Les tests YouTube du 09/08/2026 montrent que le runner GitHub distant peut être bloqué au téléchargement par YouTube ; cela ne remet pas en cause la skill ni l'ingestion locale. Une nouvelle conversation doit lire ce fichier avant de reconstruire ou réinstaller quoi que ce soit.
