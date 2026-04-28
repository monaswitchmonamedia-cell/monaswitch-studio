#requires -Version 5.1
<#
MonaSwitch Studio - Setup-Studio.ps1
Creates the MonaSwitch Studio folder structure in Google Drive or a local folder.

SAFE BY DESIGN:
- No delete.
- No move.
- No scan outside the target Studio folder.
- Creates folders and template files only.
- Copies system files from the script folder into 00_SYSTEM when present.

Recommended:
  .\Setup-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio"

Optional:
  .\Setup-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -OverwriteSystemFiles
#>

[CmdletBinding()]
param(
    [string]$RootPath,
    [switch]$OverwriteSystemFiles
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Ok($msg) { Write-Host "OK  $msg" -ForegroundColor Green }
function Write-Warn($msg) { Write-Host "WARN  $msg" -ForegroundColor Yellow }
function Write-Info($msg) { Write-Host "INFO  $msg" -ForegroundColor Cyan }

function Write-TextNoBom {
    param(
        [Parameter(Mandatory=$true)][string]$Path,
        [Parameter(Mandatory=$true)][string]$Content
    )
    $folder = Split-Path -Parent $Path
    if (!(Test-Path $folder)) { New-Item -ItemType Directory -Force -Path $folder | Out-Null }
    $encoding = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($Path, $Content, $encoding)
}

function Copy-TextFileNoBom {
    param(
        [Parameter(Mandatory=$true)][string]$Source,
        [Parameter(Mandatory=$true)][string]$Destination,
        [switch]$Overwrite
    )
    if (!(Test-Path $Source)) {
        Write-Warn "Source not found, skipped: $Source"
        return
    }

    $srcFull = [System.IO.Path]::GetFullPath($Source)
    $dstFull = [System.IO.Path]::GetFullPath($Destination)
    if ($srcFull -ieq $dstFull) { return }

    if ((Test-Path $Destination) -and (-not $Overwrite)) {
        Write-Info "Already exists, kept unchanged: $Destination"
        return
    }

    $raw = [System.IO.File]::ReadAllText($Source)
    Write-TextNoBom -Path $Destination -Content $raw
    Write-Ok "Copied: $Destination"
}

function Find-GoogleDriveRoot {
    $candidates = @()
    $candidates += Join-Path $env:USERPROFILE "Google Drive"
    $candidates += Join-Path $env:USERPROFILE "My Drive"
    $candidates += Join-Path $env:USERPROFILE "Google Drive\My Drive"
    $candidates += Join-Path $env:USERPROFILE "Google Drive\Mon Drive"

    foreach ($letter in "G","H","I","J","K","L","M","N","O","P") {
        $candidates += "$letter`:\Mon Drive"
        $candidates += "$letter`:\My Drive"
        $candidates += "$letter`:\Google Drive"
        $candidates += "$letter`:\Google Drive\Mon Drive"
        $candidates += "$letter`:\Google Drive\My Drive"
    }

    foreach ($c in $candidates) {
        if (Test-Path $c) { return $c }
    }
    return $null
}

if ([string]::IsNullOrWhiteSpace($RootPath)) {
    $driveRoot = Find-GoogleDriveRoot
    if ($null -ne $driveRoot) {
        $RootPath = Join-Path $driveRoot "MonaSwitch_Studio"
        Write-Info "Google Drive detected: $driveRoot"
    } else {
        Write-Warn "Google Drive Desktop was not detected automatically."
        $manual = Read-Host "Paste the full Studio folder path to create, e.g. G:\Mon Drive\MonaSwitch_Studio"
        if ([string]::IsNullOrWhiteSpace($manual)) { throw "No path provided. Stopped." }
        $RootPath = $manual
    }
}

$RootPath = [System.IO.Path]::GetFullPath($RootPath)
Write-Info "Studio root: $RootPath"

New-Item -ItemType Directory -Force -Path $RootPath | Out-Null

$SystemDirs = @(
    "00_SYSTEM",
    "00_SYSTEM\TEMPLATES",
    "00_SYSTEM\TEMPLATES\prompts",
    "00_SYSTEM\TEMPLATES\remotion",
    "00_SYSTEM\TEMPLATES\claude-design",
    "00_SYSTEM\BRAND_KITS",
    "00_SYSTEM\CHECKLISTS",
    "00_SYSTEM\API_KEYS_REFERENCE",
    "00_SYSTEM\SCRIPTS",
    "00_SYSTEM\WORKFLOWS",
    "01_PROJETS",
    "02_TRANSVERSE",
    "02_TRANSVERSE\inspirations",
    "02_TRANSVERSE\cinema_director_prompts",
    "02_TRANSVERSE\learnings",
    "02_TRANSVERSE\assets_communs",
    "03_EXPORTS_GLOBAUX",
    "04_ARCHIVES"
)

foreach ($dir in $SystemDirs) {
    New-Item -ItemType Directory -Force -Path (Join-Path $RootPath $dir) | Out-Null
}

$Projects = @(
    [pscustomobject]@{ Index="01"; Name="Casse Auto VHU"; Slug="01-casse-auto-vhu"; Domain="casseautovhu.com"; Priority="prioritaire" }
    [pscustomobject]@{ Index="02"; Name="New Addal"; Slug="02-new-addal"; Domain="casseautovhu.com/new-addal"; Priority="prioritaire" }
    [pscustomobject]@{ Index="03"; Name="Flaak Keratopigmentation"; Slug="03-flaak-keratopigmentation"; Domain="flaak-keratopigmentation.com"; Priority="prioritaire" }
    [pscustomobject]@{ Index="04"; Name="Julien Marinetti"; Slug="04-julien-marinetti"; Domain="julienmarinetti.com"; Priority="prioritaire" }
    [pscustomobject]@{ Index="05"; Name="Le Vin en Bouche"; Slug="05-le-vin-en-bouche"; Domain="levinenbouche.shop"; Priority="prioritaire" }
    [pscustomobject]@{ Index="06"; Name="MonaMedia"; Slug="06-monamedia"; Domain="monamedia.mc"; Priority="prioritaire" }
    [pscustomobject]@{ Index="07"; Name="Ecocasse"; Slug="07-ecocasse"; Domain="ecocasse.fr"; Priority="prioritaire" }
    [pscustomobject]@{ Index="08"; Name="A l'Ombra Calvi Marche"; Slug="08-a-lombra-calvi-marche"; Domain="alombracalvimarche.fr"; Priority="prioritaire" }
    [pscustomobject]@{ Index="09"; Name="MyCrown Estates"; Slug="09-mycrown-estates"; Domain="mycrownestates.mc"; Priority="prioritaire" }
    [pscustomobject]@{ Index="10"; Name="MonaSwitch"; Slug="10-monaswitch"; Domain="monaswitch.com"; Priority="prioritaire" }
    [pscustomobject]@{ Index="11"; Name="Consulting Energies"; Slug="11-consulting-energies"; Domain="consulting-energies.fr"; Priority="prioritaire" }
    [pscustomobject]@{ Index="12"; Name="Creation Societe Irlande"; Slug="12-creation-societe-irlande"; Domain="creation-societe-irlande.com"; Priority="prioritaire" }
    [pscustomobject]@{ Index="13"; Name="Chirurgie Refractive"; Slug="13-chirurgie-refractive"; Domain="new site to create"; Priority="prioritaire" }
    [pscustomobject]@{ Index="14"; Name="U Jardineru"; Slug="14-u-jardineru"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="15"; Name="On The Vibes"; Slug="15-on-the-vibes"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="16"; Name="Le Carre Calvi"; Slug="16-le-carre-calvi"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="17"; Name="Ken Like You"; Slug="17-ken-like-you"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="18"; Name="Immo Inter Luxury"; Slug="18-immo-inter-luxury"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="19"; Name="Heartful Moment"; Slug="19-heartful-moment"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="20"; Name="Headshare Customize"; Slug="20-headshare-customize"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="21"; Name="Gros Knockout"; Slug="21-gros-knockout"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="22"; Name="Fazzu Tuttu"; Slug="22-fazzu-tuttu"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="23"; Name="Draw Sabou"; Slug="23-draw-sabou"; Domain="secondary project"; Priority="secondaire" }
    [pscustomobject]@{ Index="24"; Name="Calvi On The Rocks"; Slug="24-calvi-on-the-rocks"; Domain="YouTube only"; Priority="secondaire" }
)

$ProjectSubDirs = @(
    "01_BRIEF",
    "02_BRAND_KIT",
    "03_SOURCES_RAW\audios",
    "03_SOURCES_RAW\videos",
    "03_SOURCES_RAW\images",
    "03_SOURCES_RAW\documents",
    "03_SOURCES_RAW\concurrents",
    "04_ASSETS\logos",
    "04_ASSETS\fonts",
    "04_ASSETS\images_source",
    "04_ASSETS\images_finales",
    "04_ASSETS\videos_brutes",
    "04_ASSETS\videos_finales",
    "04_ASSETS\audio",
    "04_ASSETS\avatars_heygen",
    "04_ASSETS\b-roll",
    "05_PRODUCTION\ugc",
    "05_PRODUCTION\cinematic",
    "05_PRODUCTION\carrousels",
    "05_PRODUCTION\reels_shorts",
    "05_PRODUCTION\articles_blog",
    "05_PRODUCTION\ads",
    "05_PRODUCTION\site",
    "05_PRODUCTION\emails",
    "06_EXPORTS\9x16",
    "06_EXPORTS\1x1",
    "06_EXPORTS\16x9",
    "06_EXPORTS\pdf",
    "06_EXPORTS\png",
    "07_PUBLIES",
    "08_PERFORMANCE\screenshots",
    "08_PERFORMANCE\stats",
    "09_PUBLICATION_A_DEFINIR\captions",
    "09_PUBLICATION_A_DEFINIR\hashtags",
    "09_PUBLICATION_A_DEFINIR\calendrier",
    "09_PUBLICATION_A_DEFINIR\preuves_publication",
    "09_PUBLICATION_A_DEFINIR\outil_final",
    "10_ARCHIVES"
)

foreach ($p in $Projects) {
    $projectRoot = Join-Path $RootPath ("01_PROJETS\" + $p.Slug)
    New-Item -ItemType Directory -Force -Path $projectRoot | Out-Null

    foreach ($sd in $ProjectSubDirs) {
        New-Item -ItemType Directory -Force -Path (Join-Path $projectRoot $sd) | Out-Null
    }

    $contextFile = Join-Path $projectRoot "PROJECT_CONTEXT.md"
    if (!(Test-Path $contextFile)) {
        $context = @"
# $($p.Name)

Status: $($p.Priority)
Domain / reference: $($p.Domain)

## Project objective
To complete.

## Audience
To complete.

## Editorial tone
To complete.

## Brand and visual identity
To complete.

## Formats to produce
- UGC
- Cinematic
- Carousels
- Reels / Shorts
- Blog articles
- Ads
- Site / landing pages
- Emails

## Important sources
Place raw files in 03_SOURCES_RAW, then add notes or links here.

## Publication
Publication and scheduling tool: TO DEFINE.
Do not use Metricool by default.

## Project-specific rules
- Do not mix this project with another MonaSwitch project.
- Work in 05_PRODUCTION first.
- Final exports go to 06_EXPORTS.
- Published assets and proof go to 07_PUBLIES and 09_PUBLICATION_A_DEFINIR.
"@
        Write-TextNoBom -Path $contextFile -Content $context
    }

    $claudeFile = Join-Path $projectRoot "CLAUDE.md"
    if (!(Test-Path $claudeFile)) {
        $claude = @"
# CLAUDE.md - $($p.Name)

You are working only on this project: $($p.Name).

Rules:
1. Read PROJECT_CONTEXT.md before producing anything.
2. Store every deliverable in the correct subfolder.
3. Never mix this project with another MonaSwitch project.
4. For sites and screens: design system first, then sections, responsive, export.
5. For Remotion: create reusable components and export 9:16, 1:1 and 16:9 when needed.
6. For social content: produce in 05_PRODUCTION, then finalize in 06_EXPORTS.
7. Publication / scheduling: tool to define. Do not use Metricool by default.
8. Reply with: understood, short plan, files changed, commands, QA checks, next action.
"@
        Write-TextNoBom -Path $claudeFile -Content $claude
    }
}

# Copy master/system files into 00_SYSTEM automatically when available.
$scriptRoot = $PSScriptRoot
if ([string]::IsNullOrWhiteSpace($scriptRoot)) { $scriptRoot = (Get-Location).Path }

$copies = @(
    @{ Source="MASTER_FILE.md"; Destination="00_SYSTEM\MASTER_FILE.md" },
    @{ Source="GPT55_INSTRUCTIONS.md"; Destination="00_SYSTEM\GPT55_INSTRUCTIONS.md" },
    @{ Source="CLAUDE_ROOT.md"; Destination="00_SYSTEM\CLAUDE_ROOT.md" },
    @{ Source="README_INSTALLATION.md"; Destination="00_SYSTEM\README_INSTALLATION.md" },
    @{ Source="Audit-ClaudeCode.ps1"; Destination="00_SYSTEM\SCRIPTS\Audit-ClaudeCode.ps1" },
    @{ Source="Start-Studio.ps1"; Destination="00_SYSTEM\SCRIPTS\Start-Studio.ps1" },
    @{ Source="Setup-Studio.ps1"; Destination="00_SYSTEM\SCRIPTS\Setup-Studio.ps1" }
)

foreach ($c in $copies) {
    $source = Join-Path $scriptRoot $c.Source
    $destination = Join-Path $RootPath $c.Destination
    Copy-TextFileNoBom -Source $source -Destination $destination -Overwrite:$OverwriteSystemFiles
}

# Root CLAUDE.md: create from CLAUDE_ROOT.md when present, otherwise use a built-in template.
$rootClaude = Join-Path $RootPath "CLAUDE.md"
$sourceRootClaude = Join-Path $scriptRoot "CLAUDE_ROOT.md"

if ((Test-Path $sourceRootClaude) -and ((!(Test-Path $rootClaude)) -or $OverwriteSystemFiles)) {
    Copy-TextFileNoBom -Source $sourceRootClaude -Destination $rootClaude -Overwrite:$OverwriteSystemFiles
} elseif (!(Test-Path $rootClaude)) {
    $rootClaudeContent = @"
# CLAUDE.md - MonaSwitch Studio

Role of Claude Code:
Technical and design execution. Build sites, components, design systems, pages, Remotion scripts, Playwright tests, exports, integrations and repo structure.

Role of GPT-5.5:
Strategy, briefs, SEO/AEO/GEO, marketing angles, scripts, image/video prompts, art direction and quality control.

Global rules:
1. Always read 00_SYSTEM/MASTER_FILE.md, then the target PROJECT_CONTEXT.md.
2. One project = one folder inside 01_PROJETS. Never mix assets.
3. Check desktop, mobile, visual consistency, performance and basic accessibility.
4. Claude Design: design system first, screens/sections second, clean export after validation.
5. Remotion: reusable components, exports 9:16, 1:1, 16:9 when needed.
6. Social publication: no Metricool dependency by default. Tool to define.
7. Never scan, move or delete files outside MonaSwitch_Studio without explicit instruction.

Priority Claude Code skills:
frontend-design, playwright-skill, self-healing-claude, superpowers, security-review, skill-creator, researcher, MCP builder.
"@
    Write-TextNoBom -Path $rootClaude -Content $rootClaudeContent
}

Write-Host ""
Write-Ok "MonaSwitch Studio structure created or updated."
Write-Info "Root: $RootPath"
Write-Info "Projects ready: $($Projects.Count)"
Write-Warn "No personal file was scanned, moved or deleted."
Write-Warn "Metricool is not used by default. Publication remains TO DEFINE."
