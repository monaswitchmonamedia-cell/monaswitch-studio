#requires -Version 5.1
<#
MonaSwitch Studio - Audit-ClaudeCode.ps1
Audits local tools, API environment variables, and common Claude configuration folders.

SAFE BY DESIGN:
- Does not print API key values.
- Does not scan the whole PC.
- Only checks common config locations: $HOME\.claude, $HOME\.claude.json, and app Claude config folders.
- Prints file names, folder names, counts, and MCP server names only.
#>

[CmdletBinding()]
param(
    [switch]$DetailedClaude
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Continue"

function Write-Section($msg) {
    Write-Host ""
    Write-Host "=== $msg ===" -ForegroundColor Cyan
}

function Test-Cmd {
    param(
        [string]$Name,
        [string]$VersionArg = "--version"
    )
    $cmd = Get-Command $Name -ErrorAction SilentlyContinue
    if ($null -eq $cmd) {
        [pscustomobject]@{ Tool=$Name; Status="ABSENT"; Version=""; Path="" }
        return
    }

    try {
        $v = (& $Name $VersionArg 2>&1 | Select-Object -First 1) -join " "
    } catch {
        $v = "detected, version unreadable"
    }

    [pscustomobject]@{ Tool=$Name; Status="OK"; Version=$v; Path=$cmd.Source }
}

function Get-EnvStatus {
    param([string]$Name)

    $userValue = [Environment]::GetEnvironmentVariable($Name, "User")
    $machineValue = [Environment]::GetEnvironmentVariable($Name, "Machine")
    $processValue = [Environment]::GetEnvironmentVariable($Name, "Process")

    $scopes = @()
    if (-not [string]::IsNullOrWhiteSpace($processValue)) { $scopes += "Process" }
    if (-not [string]::IsNullOrWhiteSpace($userValue)) { $scopes += "User" }
    if (-not [string]::IsNullOrWhiteSpace($machineValue)) { $scopes += "Machine" }

    [pscustomobject]@{
        Variable=$Name
        Status=if ($scopes.Count -gt 0) { "PRESENT" } else { "ABSENT" }
        Scope=if ($scopes.Count -gt 0) { ($scopes -join ",") } else { "" }
    }
}

function Show-JsonConfigSummary {
    param([string]$Path)

    if (!(Test-Path $Path)) { return }

    Write-Host ""
    Write-Host "Config file detected: $Path" -ForegroundColor DarkCyan

    try {
        $raw = [System.IO.File]::ReadAllText($Path)
        if ([string]::IsNullOrWhiteSpace($raw)) {
            Write-Host "  Empty file."
            return
        }

        $json = $raw | ConvertFrom-Json
        $props = $json.PSObject.Properties.Name
        if ($props) {
            Write-Host ("  Top-level keys: " + ($props -join ", "))
        }

        if ($props -contains "mcpServers") {
            $servers = $json.mcpServers.PSObject.Properties.Name
            if ($servers) {
                Write-Host ("  MCP servers: " + ($servers -join ", "))
            } else {
                Write-Host "  MCP servers: none listed"
            }
        }
    } catch {
        Write-Host "  Could not parse JSON safely. Content not displayed." -ForegroundColor Yellow
    }
}

function Show-ClaudeDirectorySummary {
    param([string]$Path)

    if (!(Test-Path $Path)) { return }

    Write-Host ""
    Write-Host "Claude folder detected: $Path" -ForegroundColor DarkCyan

    try {
        $top = Get-ChildItem -Force -Path $Path -ErrorAction SilentlyContinue
        $dirs = $top | Where-Object { $_.PSIsContainer }
        $files = $top | Where-Object { -not $_.PSIsContainer }

        Write-Host ("  Top folders: " + (($dirs | Select-Object -ExpandProperty Name) -join ", "))
        Write-Host ("  Top files: " + (($files | Select-Object -ExpandProperty Name) -join ", "))

        $knownSubDirs = @("skills","plugins","commands","agents","mcp","projects")
        foreach ($sub in $knownSubDirs) {
            $subPath = Join-Path $Path $sub
            if (Test-Path $subPath) {
                $items = Get-ChildItem -Force -Path $subPath -ErrorAction SilentlyContinue | Select-Object -First 50
                Write-Host ("  {0}: {1} item(s)" -f $sub, (($items | Measure-Object).Count))
                if ($DetailedClaude) {
                    $names = $items | Select-Object -ExpandProperty Name
                    if ($names) { Write-Host ("    " + ($names -join ", ")) }
                }
            }
        }

        $settingsCandidates = @(
            Join-Path $Path "settings.json",
            Join-Path $Path "mcp.json",
            Join-Path $Path "claude_desktop_config.json"
        )
        foreach ($cfg in $settingsCandidates) { Show-JsonConfigSummary -Path $cfg }
    } catch {
        Write-Host "  Could not read folder summary. Content not displayed." -ForegroundColor Yellow
    }
}

Write-Section "TOOLS"
$tools = @(
    @{Name="node"; VersionArg="--version"},
    @{Name="npm"; VersionArg="--version"},
    @{Name="pnpm"; VersionArg="--version"},
    @{Name="bun"; VersionArg="--version"},
    @{Name="python"; VersionArg="--version"},
    @{Name="py"; VersionArg="--version"},
    @{Name="git"; VersionArg="--version"},
    @{Name="gh"; VersionArg="--version"},
    @{Name="claude"; VersionArg="--version"},
    @{Name="code"; VersionArg="--version"}
)

$results = foreach ($t in $tools) { Test-Cmd -Name $t.Name -VersionArg $t.VersionArg }
$results | Format-Table -AutoSize

Write-Section "API ENVIRONMENT VARIABLES"
Write-Host "Values are hidden on purpose." -ForegroundColor Yellow
$vars = @(
    "HEYGEN_API_KEY",
    "ELEVENLABS_API_KEY",
    "SEMRUSH_API_KEY",
    "SURFER_API_KEY",
    "OPENAI_API_KEY",
    "GOOGLE_API_KEY",
    "GEMINI_API_KEY",
    "ANTHROPIC_API_KEY"
)
$envResults = foreach ($var in $vars) { Get-EnvStatus -Name $var }
$envResults | Format-Table -AutoSize

Write-Section "CLAUDE CONFIG / MCP / SKILLS"
$homePath = [Environment]::GetFolderPath("UserProfile")
$claudePaths = @(
    (Join-Path $homePath ".claude"),
    (Join-Path $env:APPDATA "Claude"),
    (Join-Path $env:LOCALAPPDATA "Claude")
) | Where-Object { -not [string]::IsNullOrWhiteSpace($_) } | Select-Object -Unique

foreach ($path in $claudePaths) {
    Show-ClaudeDirectorySummary -Path $path
}

$configFiles = @(
    (Join-Path $homePath ".claude.json"),
    (Join-Path $homePath ".claude\settings.json"),
    (Join-Path $homePath ".claude\mcp.json"),
    (Join-Path $env:APPDATA "Claude\claude_desktop_config.json")
) | Where-Object { -not [string]::IsNullOrWhiteSpace($_) } | Select-Object -Unique

foreach ($cfg in $configFiles) {
    Show-JsonConfigSummary -Path $cfg
}

Write-Section "REMOTION CHECK"
try {
    $remotion = npm list -g --depth=0 2>$null | Select-String "remotion"
    if ($remotion) {
        Write-Host "OK  Remotion detected globally:" -ForegroundColor Green
        $remotion | ForEach-Object { Write-Host $_.Line }
    } else {
        Write-Host "INFO Remotion global not detected. This is normal if Remotion is installed per repo/project." -ForegroundColor Yellow
    }
} catch {
    Write-Host "INFO Global Remotion audit could not run yet." -ForegroundColor Yellow
}

Write-Section "PHASE 1 RECOMMENDATION"
Write-Host "Install/check first: Git, Node.js LTS, npm/pnpm, Claude Code, VS Code, Python."
Write-Host "APIs phase 1: HeyGen, SEMrush, SurferSEO. Higgsfield later."
Write-Host "Flow/Nano Banana can stay interface-first until an API workflow is confirmed."
Write-Host "Publication/scheduling: TO DEFINE. Metricool is not a default dependency."

