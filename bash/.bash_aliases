# -----------------------------------------------------------------------------
# Bash -- Variables
# -----------------------------------------------------------------------------

# Init to "" (e.g. false)
isMacOS=""
if [[ $OSTYPE == *"darwin"* ]]; then
    isMacOS="true"
fi

# -----------------------------------------------------------------------------
# Bash -- Movement and Listing
# -----------------------------------------------------------------------------

# Movement
alias cd.="cd .."
alias cd..="cd .."
alias c.="cd .."
alias cu='cd ..'

# ls aliases
if $isMacOS; then
    # MacOS -- ls aliases because they don't allow colors :(
    alias ll='ls -ahlF'
    alias la='ls -lA'
    alias l='ls  -CF'
    alias ls='ls -ahlF'
else
    alias ll='ls -ahlF --group-directories-first --color=auto'
    alias la='ls -lA --group-directories-first --color=auto'
    alias l='ls  -CF --group-directories-first --color=auto'
    alias ls='ls -lhA --group-directories-first --color=auto'
fi

# Directory Work
alias lsd='ls -d */ --color=auto' # List folders below
alias mkdir='mkdir -pv'           # Make parent directories as needed w/ output

# Copy
if ! $isMacOS; then
    alias cp='cp -iar' # Hidden files and folders too
fi

# Confirm 'mv' and 'rm'
alias rm='rm -i'
alias mv='mv -i'

# Terminal Management
alias cl='clear'
alias clr='clear'

# Config Editing
alias vimbp='vim ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias vimba='vim "$DOTFILES"/bash/.bash_aliases'
alias sba='source "$DOTFILES"/bash/.bash_aliases'
alias vimbsp='vim "$DOTFILES"/bash/.specifics.sh'
alias sbsp='source "$DOTFILES"/bash/.specifics.sh'
alias vimbrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias sdf='source ~/.bash_profile'
alias sdotfiles='source ~/.bash_profile'

# Dotfile Setup
alias cddf='cd "$DOTFILES"'
alias cddotfiles='cd "$DOTFILES"'
alias setup-bash='. "$DOTFILES"/bash/setup-bash.sh'
alias setupbash='. "$DOTFILES"/bash/setup-bash.sh'



# -----------------------------------------------------------------------------
# Programs -- Docker, Git, etc.
# -----------------------------------------------------------------------------

# Docker
alias dk="docker"
alias dc="docker-compose"
alias dm="docker-machine"
alias dkrmall="docker rm $(docker ps -a -q)"

# Git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gb="git branch"
alias gd="git diff"
alias gdc="git diff --cached"
alias gu="git reset --hard HEAD"     # Undo current changes
alias guc="git reset --soft HEAD~1"  # Undo last commit
alias grt="git remote"
alias grm="git rm"
alias grs="git reset"
alias gch="git checkout"
alias gpl="git pull"
alias gph="git push"
alias gcl="git clone"
# Git >> Special Operations
alias gms="git merge --squash"  # Squashes to a single commit the given <feature_branch>
alias grmc="git rm --cached"    # Destages the given <file>
alias gclf="git checkout --"    # Clear the given <file> of changes
# Git >> Total Names
alias gpull="gpl"
alias gpush="gph"
alias gclone="gcl"
alias gundo="gu"
# Git >> English Names
alias squish="git merge --squash"   # Squashes to a single commit the given <feature_branch>
alias destage="git rm --cached"     # Destages the given <file>
alias discard="git checkout --"       # Clear the given <file>"
alias greset="git reset --hard HEAD"     # Undo current changes

# Windows
alias exp="explorer ."

# Matlab
alias matlab="C:/Program Files/MATLAB/R2016a/bin/win64/matlab"

# Go
alias goi="go install"
alias goget="go get -u -v"
alias gog="goget"
alias gobuild="go build"
alias gob="gobuild"
alias goirn="go build -i -o"

# Jykell
alias bejs="bundle exec jekyll serve"



# -----------------------------------------------------------------------------
# Interaction -- Internet, Fun, Files
# -----------------------------------------------------------------------------

# Internet
alias ping='ping -c 5'              # Don't let ping go on forever
alias pingg='ping -c 5 google.com'  # Is this thing on?
alias pinggg='ping -c 5 8.8.8.8'    # Check 2
alias myip='dig +short myip.opendns.com @resolver1.opendns.com' # Say my name

# Who's permission is denied?
alias fucking='sudo $(history -p !!)'

# To make Smacz happy
alias godmode='sudo !!'

# Think happy thoughts...
alias frak='fortune'

# Hardware & File System
alias lsblk='lsblk -f'  # What drives are connected?
alias df='df -h'        # What is my disk space?
alias diskspace='du -S | sort -n -r |more' # Who ate my space?
alias du='du -ch'       # Available space?



# -----------------------------------------------------------------------------
# Project -- Movement, Running, etc.
# -----------------------------------------------------------------------------

# Dotfiles
alias cdotfiles='code "$DOTFILES"'
alias cdf='code "$DOTFILES"'
alias vimdotfiles='vim "$DOTFILES"'
alias vimdf='vim "$DOTFILES"'

# cd Path updates >> Github, Go
export CDPATH=.:$HOME:$GITHUBPATH:$GOPATH/src/github.com

# Basic Movement
alias cdgo='cd "$GOPATH"'
alias cdgithub='cd "$GITHUBPATH"'
alias cdgh="cdgithub"

# Specific Movement
alias cdesi="cd ~/Documents/GitHub/esportsinitiative.github.io/"
alias cdgotb="cdgo && cd src/github.com/chelexa/trofiebot/"

# Running
alias goitb="goi github.com/chelexa/trofiebot/"
# alias delk="docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -p 5000:5000 -it --name elk sebp/elk"
