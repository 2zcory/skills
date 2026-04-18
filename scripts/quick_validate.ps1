param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$SkillDirectory
)

$ErrorActionPreference = "Stop"

$maxSkillNameLength = 64
$allowedProperties = @("name", "description", "license", "allowed-tools", "metadata")

function Fail([string]$message) {
    Write-Output $message
    exit 1
}

try {
    $skillPath = (Resolve-Path -LiteralPath $SkillDirectory).Path
} catch {
    Fail "Skill directory not found: $SkillDirectory"
}

$skillMdPath = Join-Path $skillPath "SKILL.md"
if (-not (Test-Path -LiteralPath $skillMdPath -PathType Leaf)) {
    Fail "SKILL.md not found"
}

$content = Get-Content -LiteralPath $skillMdPath -Raw
if (-not $content.StartsWith("---")) {
    Fail "No YAML frontmatter found"
}

$match = [regex]::Match($content, "(?s)^---\r?\n(.*?)\r?\n---")
if (-not $match.Success) {
    Fail "Invalid frontmatter format"
}

$frontmatterText = $match.Groups[1].Value
$topLevelMatches = [regex]::Matches($frontmatterText, "(?m)^(?<key>[A-Za-z0-9_-]+):")

if ($topLevelMatches.Count -eq 0) {
    Fail "Frontmatter must be a YAML dictionary"
}

$keys = @()
foreach ($m in $topLevelMatches) {
    $keys += $m.Groups["key"].Value
}

$unexpectedKeys = $keys | Where-Object { $_ -notin $allowedProperties } | Select-Object -Unique
if ($unexpectedKeys.Count -gt 0) {
    $allowed = ($allowedProperties | Sort-Object) -join ", "
    $unexpected = ($unexpectedKeys | Sort-Object) -join ", "
    Fail "Unexpected key(s) in SKILL.md frontmatter: $unexpected. Allowed properties are: $allowed"
}

if ($keys -notcontains "name") {
    Fail "Missing 'name' in frontmatter"
}

if ($keys -notcontains "description") {
    Fail "Missing 'description' in frontmatter"
}

$nameMatch = [regex]::Match($frontmatterText, '(?m)^name:\s*(?:"(?<value>[^"]*)"|''(?<value>[^'']*)''|(?<value>.+))\s*$')
if (-not $nameMatch.Success) {
    Fail "Name must be a string"
}

$name = $nameMatch.Groups["value"].Value.Trim()
if ($name -ne "") {
    if ($name -notmatch '^[a-z0-9-]+$') {
        Fail "Name '$name' should be hyphen-case (lowercase letters, digits, and hyphens only)"
    }
    if ($name.StartsWith("-") -or $name.EndsWith("-") -or $name.Contains("--")) {
        Fail "Name '$name' cannot start/end with hyphen or contain consecutive hyphens"
    }
    if ($name.Length -gt $maxSkillNameLength) {
        Fail "Name is too long ($($name.Length) characters). Maximum is $maxSkillNameLength characters."
    }
}

$descriptionMatch = [regex]::Match($frontmatterText, '(?m)^description:\s*(?:"(?<value>[^"]*)"|''(?<value>[^'']*)''|(?<value>.+))\s*$')
if (-not $descriptionMatch.Success) {
    Fail "Description must be a string"
}

$description = $descriptionMatch.Groups["value"].Value.Trim()
if ($description -ne "") {
    if ($description.Contains("<") -or $description.Contains(">")) {
        Fail "Description cannot contain angle brackets (< or >)"
    }
    if ($description.Length -gt 1024) {
        Fail "Description is too long ($($description.Length) characters). Maximum is 1024 characters."
    }
}

Write-Output "Skill is valid!"
exit 0
