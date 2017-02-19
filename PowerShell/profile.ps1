# Startup Config
Clear-Host
Write-Output "This is a test of the PowerShell isn't broken system."
Set-Location $env:USERPROFILE

# Setup Variables
$dotfilesPowerShell = "$env:DOTFILES/PowerShell"

# Load Aliases
$loadAliases = "$dotfilesPowerShell/aliases.ps1"
if (Test-Path $loadAliases) {
    . $loadAliases
}

# Load Keys
$loadKeys = "$dotfilesPowerShell/keys.ps1"
if (Test-Path $loadKeys) {
    . $loadKeys
}

# Load Specifics
$loadSpecifics = "$dotfilesPowerShell/specifics.ps1"
if (Test-Path $loadSpecifics) {
    . $loadSpecifics
}
