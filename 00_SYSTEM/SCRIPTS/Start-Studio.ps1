#requires -Version 5.1
<#
MonaSwitch Studio - Start-Studio.ps1
Menu to open a project folder and choose the action.

SAFE BY DESIGN:
- Does not create/delete/move files.
- Changes current directory only.
- Optional actions: open Explorer, open VS Code, launch Claude Code, or just cd.

Recommended:
  .\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio"

Tip:
  If you want the cd to remain in your current PowerShell session, dot-source it:
  . .\Start-Studio.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio"
#>

[CmdletBinding()]
param(
    [string]$RootPath,
    [string]$Project,
    [ValidateSet("Menu","Explorer","Code","Claude","Cd","All")]
    [string]$Action = "Menu"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Info($msg) { Write-Host "INFO  $msg" -ForegroundColor Cyan }
function Write-Ok($msg) { Write-Host "OK  $msg" -ForegroundColor Green }
function Write-Warn($msg) { Write-Host "WARN  $msg" -ForegroundColor Yellow }

function Find-StudioRoot {
    $candidates = @()
    foreach ($letter in "G","H","I","J","K","L","M","N","O","P","C") {
        $candidates += "$letter`:\Mon Drive\MonaSwitch_Studio"
        $candidates += "$letter`:\My Drive\MonaSwitch_Studio"
        $candidates += "$letter`:\Google Drive\MonaSwitch_Studio"
        $candidates += "$letter`:\Google Drive\Mon Drive\MonaSwitch_Studio"
        $candidates += "$letter`:\Google Drive\My Drive\MonaSwitch_Studio"
    }
    $candidates += Join-Path $env:USERPROFILE "Google Drive\MonaSwitch_Studio"
    $candidates += Join-Path $env:USERPROFILE "Google Drive\Mon Drive\MonaSwitch_Studio"
    $candidates += Join-Path $env:USERPROFILE "Google Drive\My Drive\MonaSwitch_Studio"
    $candidates += Join-Path $env:USERPROFILE "MonaSwitch_Studio"

    foreach ($c in $candidates) {
        if (Test-Path $c) { return $c }
    }
    return $null
}

$Projects = @(
    [pscustomobject]@{ Index="01"; Name="Casse Auto VHU"; Slug="01-casse-auto-vhu"; Domain="casseautovhu.com"; Priority="PRIO" }
    [pscustomobject]@{ Index="02"; Name="New Addal"; Slug="02-new-addal"; Domain="casseautovhu.com/new-addal"; Priority="PRIO" }
    [pscustomobject]@{ Index="03"; Name="Flaak Keratopigmentation"; Slug="03-flaak-keratopigmentation"; Domain="flaak-keratopigmentation.com"; Priority="PRIO" }
    [pscustomobject]@{ Index="04"; Name="Julien Marinetti"; Slug="04-julien-marinetti"; Domain="julienmarinetti.com"; Priority="PRIO" }
    [pscustomobject]@{ Index="05"; Name="Le Vin en Bouche"; Slug="05-le-vin-en-bouche"; Domain="levinenbouche.shop"; Priority="PRIO" }
    [pscustomobject]@{ Index="06"; Name="MonaMedia"; Slug="06-monamedia"; Domain="monamedia.mc"; Priority="PRIO" }
    [pscustomobject]@{ Index="07"; Name="Ecocasse"; Slug="07-ecocasse"; Domain="ecocasse.fr"; Priority="PRIO" }
    [pscustomobject]@{ Index="08"; Name="A l'Ombra Calvi Marche"; Slug="08-a-lombra-calvi-marche"; Domain="alombracalvimarche.fr"; Priority="PRIO" }
    [pscustomobject]@{ Index="09"; Name="MyCrown Estates"; Slug="09-mycrown-estates"; Domain="mycrownestates.mc"; Priority="PRIO" }
    [pscustomobject]@{ Index="10"; Name="MonaSwitch"; Slug="10-monaswitch"; Domain="monaswitch.com"; Priority="PRIO" }
    [pscustomobject]@{ Index="11"; Name="Consulting Energies"; Slug="11-consulting-energies"; Domain="consulting-energies.fr"; Priority="PRIO" }
    [pscustomobject]@{ Index="12"; Name="Creation Societe Irlande"; Slug="12-creation-societe-irlande"; Domain="creation-societe-irlande.com"; Priority="PRIO" }
    [pscustomobject]@{ Index="13"; Name="Chirurgie Refractive"; Slug="13-chirurgie-refractive"; Domain="new site to create"; Priority="PRIO" }
    [pscustomobject]@{ Index="14"; Name="U Jardineru"; Slug="14-u-jardineru"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="15"; Name="On The Vibes"; Slug="15-on-the-vibes"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="16"; Name="Le Carre Calvi"; Slug="16-le-carre-calvi"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="17"; Name="Ken Like You"; Slug="17-ken-like-you"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="18"; Name="Immo Inter Luxury"; Slug="18-immo-inter-luxury"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="19"; Name="Heartful Moment"; Slug="19-heartful-moment"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="20"; Name="Headshare Customize"; Slug="20-headshare-customize"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="21"; Name="Gros Knockout"; Slug="21-gros-knockout"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="22"; Name="Fazzu Tuttu"; Slug="22-fazzu-tuttu"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="23"; Name="Draw Sabou"; Slug="23-draw-sabou"; Domain="secondary project"; Priority="SEC" }
    [pscustomobject]@{ Index="24"; Name="Calvi On The Rocks"; Slug="24-calvi-on-the-rocks"; Domain="YouTube only"; Priority="SEC" }
)

if ([string]::IsNullOrWhiteSpace($RootPath)) {
    $RootPath = Find-StudioRoot
    if ($null -eq $RootPath) {
        $RootPath = Read-Host "Paste the full path of MonaSwitch_Studio"
    }
}

if (!(Test-Path $RootPath)) {
    throw "Folder not found: $RootPath. Run Setup-Studio.ps1 first."
}

if ([string]::IsNullOrWhiteSpace($Project)) {
    Write-Host ""
    Write-Host "=== MONASWITCH STUDIO ===" -ForegroundColor Cyan
    Write-Host "Root: $RootPath" -ForegroundColor DarkCyan
    Write-Host ""
    Write-Host "Available projects:" -ForegroundColor Cyan

    foreach ($p in $Projects) {
        Write-Host ("{0}. [{1}] {2} - {3}" -f $p.Index, $p.Priority, $p.Name, $p.Domain)
    }

    Write-Host ""
    $choice = Read-Host "Type the project number to open"
    $picked = $Projects | Where-Object { $_.Index -eq $choice }
} else {
    $picked = $Projects | Where-Object {
        $_.Index -eq $Project -or
        $_.Slug -ieq $Project -or
        $_.Name -ieq $Project
    }
}

if ($null -eq $picked) { throw "Invalid project: $Project" }
if ($picked -is [array]) { $picked = $picked[0] }

$projectPath = Join-Path $RootPath ("01_PROJETS\" + $picked.Slug)
if (!(Test-Path $projectPath)) {
    throw "Project folder not found: $projectPath. Run Setup-Studio.ps1 first."
}

Set-Location $projectPath
Write-Host ""
Write-Ok "Project opened: $($picked.Name)"
Write-Host "Path: $projectPath" -ForegroundColor DarkCyan

if ($Action -eq "Menu") {
    Write-Host ""
    Write-Host "Choose action:" -ForegroundColor Cyan
    Write-Host "1. Open folder in Explorer"
    Write-Host "2. Open in VS Code"
    Write-Host "3. Launch Claude Code"
    Write-Host "4. Just cd here"
    Write-Host "5. Open Explorer + VS Code + Claude Code"
    Write-Host ""
    $actionChoice = Read-Host "Action number"

    switch ($actionChoice) {
        "1" { $Action = "Explorer" }
        "2" { $Action = "Code" }
        "3" { $Action = "Claude" }
        "4" { $Action = "Cd" }
        "5" { $Action = "All" }
        default { throw "Invalid action: $actionChoice" }
    }
}

if ($Action -eq "Explorer" -or $Action -eq "All") {
    Start-Process explorer.exe $projectPath
    Write-Ok "Explorer opened."
}

if ($Action -eq "Code" -or $Action -eq "All") {
    $code = Get-Command "code" -ErrorAction SilentlyContinue
    if ($null -eq $code) {
        Write-Warn "VS Code command 'code' not found in PATH."
    } else {
        code $projectPath
        Write-Ok "VS Code opened."
    }
}

if ($Action -eq "Claude" -or $Action -eq "All") {
    $claude = Get-Command "claude" -ErrorAction SilentlyContinue
    if ($null -eq $claude) {
        Write-Warn "Claude Code command 'claude' not found in PATH."
        Write-Warn "You are still in the right folder. Launch Claude manually after install."
    } else {
        Write-Info "Launching Claude Code in this project folder..."
        claude
    }
}

if ($Action -eq "Cd") {
    Write-Ok "Current PowerShell location is now the project folder."
}
