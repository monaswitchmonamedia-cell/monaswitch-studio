#requires -Version 5.1
<#
MonaSwitch Studio — Install-VideoPower.ps1

Installs/syncs the repo-managed /videopower skill into the current user's Claude skills folder.
It does NOT overwrite or recreate /analyze. /analyze remains the source of truth.

Recommended:
  Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
  .\Install-VideoPower.ps1 -RootPath "G:\Mon Drive\MonaSwitch_Studio" -InstallMissing

Safe behavior:
- creates/updates only ~/.claude/skills/videopower
- verifies ~/.claude/skills/analyze
- optionally installs missing Python packages and ffmpeg
- never deletes /analyze or project assets
#>

[CmdletBinding()]
param(
    [string]$RootPath = "G:\Mon Drive\MonaSwitch_Studio",
    [switch]$InstallMissing,
    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Ok($msg)   { Write-Host "OK    $msg" -ForegroundColor Green }
function Write-Info($msg) { Write-Host "INFO  $msg" -ForegroundColor Cyan }
function Write-Warn($msg) { Write-Host "WARN  $msg" -ForegroundColor Yellow }
function Write-Fail($msg) { Write-Host "FAIL  $msg" -ForegroundColor Red }

function Resolve-Python {
    if (Get-Command py -ErrorAction SilentlyContinue) {
        return @("py", "-3")
    }
    if (Get-Command python -ErrorAction SilentlyContinue) {
        return @("python")
    }
    return $null
}

function Invoke-Python {
    param(
        [Parameter(Mandatory=$true)][string[]]$PythonCommand,
        [Parameter(Mandatory=$true)][string[]]$Arguments
    )
    $exe = $PythonCommand[0]
    $prefix = @()
    if ($PythonCommand.Count -gt 1) { $prefix = $PythonCommand[1..($PythonCommand.Count-1)] }
    & $exe @prefix @Arguments
    if ($LASTEXITCODE -ne 0) { throw "Python command failed: $exe $($Arguments -join ' ')" }
}

$RootPath = [System.IO.Path]::GetFullPath($RootPath)
$SkillSource = Join-Path $RootPath "00_SYSTEM\SKILLS\videopower"
$ClaudeSkills = Join-Path $env:USERPROFILE ".claude\skills"
$VideoPowerTarget = Join-Path $ClaudeSkills "videopower"
$AnalyzeTarget = Join-Path $ClaudeSkills "analyze"

Write-Info "Studio root: $RootPath"
Write-Info "VideoPower source: $SkillSource"
Write-Info "Claude skills: $ClaudeSkills"

if (!(Test-Path $SkillSource)) {
    throw "VideoPower source folder not found: $SkillSource. Sync/pull MonaSwitch_Studio first."
}

if (!(Test-Path (Join-Path $SkillSource "SKILL.md"))) {
    throw "Invalid VideoPower package: SKILL.md is missing."
}

New-Item -ItemType Directory -Force -Path $ClaudeSkills | Out-Null

# Preserve /analyze. Never modify it here.
if (Test-Path (Join-Path $AnalyzeTarget "SKILL.md")) {
    Write-Ok "/analyze detected: $AnalyzeTarget"
} else {
    Write-Warn "/analyze was NOT found at $AnalyzeTarget"
    Write-Warn "/videopower can ingest video, but automated brand routing/remix must not invent charter/logos/CTA until /analyze is restored."
}

# Copy/sync /videopower only.
if ((Test-Path $VideoPowerTarget) -and $Force) {
    Write-Info "Force sync requested. Existing /videopower files will be overwritten by matching source files."
}
New-Item -ItemType Directory -Force -Path $VideoPowerTarget | Out-Null
Copy-Item -Path (Join-Path $SkillSource "*") -Destination $VideoPowerTarget -Recurse -Force
Write-Ok "Installed /videopower → $VideoPowerTarget"

# Python + packages
$python = Resolve-Python
if ($null -eq $python) {
    Write-Warn "Python not detected."
    if ($InstallMissing) {
        if (Get-Command winget -ErrorAction SilentlyContinue) {
            Write-Info "Installing Python 3 via winget..."
            winget install --id Python.Python.3.12 -e --accept-package-agreements --accept-source-agreements
            $python = Resolve-Python
        } else {
            Write-Fail "winget unavailable. Install Python 3.12+ manually, then rerun."
        }
    }
}

if ($null -ne $python) {
    Write-Ok "Python detected: $($python -join ' ')"
    if ($InstallMissing) {
        $requirements = Join-Path $VideoPowerTarget "requirements.txt"
        Write-Info "Installing/updating VideoPower Python dependencies..."
        Invoke-Python -PythonCommand $python -Arguments @("-m", "pip", "install", "-U", "-r", $requirements)
        Write-Ok "Python dependencies installed/updated."
    }
}

# ffmpeg / ffprobe
$ffmpeg = Get-Command ffmpeg -ErrorAction SilentlyContinue
$ffprobe = Get-Command ffprobe -ErrorAction SilentlyContinue
if ($ffmpeg -and $ffprobe) {
    Write-Ok "ffmpeg + ffprobe detected."
} elseif ($InstallMissing) {
    if (Get-Command winget -ErrorAction SilentlyContinue) {
        Write-Info "Installing FFmpeg via winget..."
        winget install --id Gyan.FFmpeg -e --accept-package-agreements --accept-source-agreements
        Write-Warn "If ffmpeg is still not recognized, close and reopen PowerShell, then rerun this installer."
    } else {
        Write-Fail "ffmpeg missing and winget unavailable. Install FFmpeg manually."
    }
} else {
    Write-Warn "ffmpeg/ffprobe missing. Rerun with -InstallMissing or install FFmpeg manually."
}

# yt-dlp command verification. Python package may expose it after PATH refresh.
$ytdlp = Get-Command yt-dlp -ErrorAction SilentlyContinue
if ($ytdlp) {
    Write-Ok "yt-dlp detected."
} elseif ($InstallMissing -and $null -ne $python) {
    Write-Warn "yt-dlp command not yet visible in PATH. The Python package was installed; reopen PowerShell if needed."
} else {
    Write-Warn "yt-dlp command not detected. Rerun with -InstallMissing."
}

# Basic file validation.
$requiredFiles = @(
    "SKILL.md",
    "requirements.txt",
    "reference\WORKFLOW.md",
    "reference\OUTPUTS.md",
    "scripts\videopower_ingest.py"
)

$allGood = $true
foreach ($relative in $requiredFiles) {
    $full = Join-Path $VideoPowerTarget $relative
    if (Test-Path $full) {
        Write-Ok "Skill file: $relative"
    } else {
        Write-Fail "Missing skill file: $relative"
        $allGood = $false
    }
}

Write-Host ""
if ($allGood) {
    Write-Host "============================================================" -ForegroundColor Green
    Write-Host " /videopower package is installed." -ForegroundColor Green
    Write-Host " Restart Claude Code so skill metadata is reloaded." -ForegroundColor Green
    Write-Host " Then test:" -ForegroundColor Green
    Write-Host "   /videopower https://youtu.be/VIDEO_ID" -ForegroundColor White
    Write-Host "============================================================" -ForegroundColor Green
} else {
    throw "VideoPower installation finished with missing files."
}
