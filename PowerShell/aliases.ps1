# -----------------------------------------------------------------------------
# PowerShell -- Movement and Listing
# -----------------------------------------------------------------------------

# Terminal Management
Set-Alias cl clear

# Prompt Style
## https://superuser.com/questions/517498/what-is-the-windows-7-equivalent-of-bashs-export-ps1-to-set-prompt-color
function prompt
{
    Write-Host ""
    Write-Host "3ygun " -NoNewline -ForegroundColor Green
    Write-Host "$(pwd)" -ForegroundColor Magenta
    return '$ '
}

# -----------------------------------------------------------------------------
# Programs -- Docker, Git, etc.
# -----------------------------------------------------------------------------

# Docker
Set-Alias dk docker
Set-Alias dc docker-compose
Set-Alias dm docker-machine
Set-Alias dkrmall func_dkrmall; function func_dkrmall () { docker rm $(docker ps -a -q) }

# Git
Set-Alias gs func_gs; function func_gs() { git status }
Set-Alias ga func_ga; function func_ga() { git add }
# Set-Alias gc func_gc; function func_gc() { git commit } # Reserved PowerShell Word :'(
Set-Alias gco func_gc; function func_gc() { git commit }
Set-Alias gb func_gb; function func_gb() { git branch }
Set-Alias gd func_gd; function func_gd() { git diff }
Set-Alias gdc func_gdc; function func_gdc() { git diff --cached }
# Set-Alias gu func_gu; function func_gu() { git reset --hard HEAD }    # Undo current changes # Reserved PowerShell Word :'(
Set-Alias gus func_gu; function func_gu() { git reset --hard HEAD }    # Undo current changes
Set-Alias guc func_guc; function func_guc() { git reset --soft HEAD~1 }  # Undo last commit
Set-Alias grt func_grt; function func_grt() { git remote }
Set-Alias grm func_grm; function func_grm() { git rm }
Set-Alias grs func_grs; function func_grs() { git reset }
Set-Alias gch func_gch; function func_gch() { git checkout }
Set-Alias gpl func_gpl; function func_gpl() { git pull }
Set-Alias gph func_gph; function func_gph() { git push }
Set-Alias gcl func_gcl; function func_gcl() { git clone }
# Git >> Special Operations
Set-Alias gms func_gms; function func_gms() { git merge --squash }  # Squashes to a single commit the given <feature_branch>
Set-Alias grmc func_grmc; function func_grmc() { git rm --cached }  # Destages the given <file>
Set-Alias gclf func_gclf; function func_gclf() { git checkout -- }  # Clear the given <file> of changes
# Git >> Total Names
Set-Alias gpull func_gpull; function func_gpull() { func_gpl }
Set-Alias gpush func_gpush; function func_gpush() { func_gph }
Set-Alias gclone func_gclone; function func_gclone() { func_gcl }
Set-Alias gundo func_gundo; function func_gundo() { func_gu }

# -----------------------------------------------------------------------------
# Project -- Movement, Running, etc.
# -----------------------------------------------------------------------------

# Dotfiles
Set-Alias cdotfiles func_dotfiles; function func_dotfiles () { code $env:DOTFILES }
Set-Alias cdf func_dotfiles

# Basic Movement
Set-Alias cdgo func_cdgo; function func_cdgo() { Set-Location $env:GOPATH }
Set-Alias cdgh func_cdgh; function func_cdgh() { Set-Location $env:GITHUBPATH }
Set-Alias cdgithub func_cdgithub; function func_cdgithub() { Set-Location $env:GITHUBPATH }


# -----------------------------------------------------------------------------
# End
# -----------------------------------------------------------------------------
Write-Output "Loaded Aliases"
