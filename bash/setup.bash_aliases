# -----------------------------------------------------------------------------
# Terminal -- Styling
# -----------------------------------------------------------------------------

# Is the current directory within a git repository?
# Then compute and display:
# 1. The branch name
# 2. `*` if there are pending changes
function terminal_git_status() {
    # Has git? Copied from https://stackoverflow.com/questions/2180270/check-if-current-directory-is-a-git-repository
    if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        # Check if there are changes to commit?
        local change="$(git status -s -b | grep -oEm 1 'M\s+')"
        local changeSign=''
        if [[ -n $change ]]; then
            changeSign=' : *'
        fi

        local branch="$(git status -s -b | grep -oEim 1 '## (\w*)' | cut -f2- -d ' ')"
        if [[ -n $branch ]]; then # Affirm there is a branch first? Validates git existence
            echo "($branch$changeSign)"
        fi
    fi
}

# Prompt Styling
export PS1='\n\e[32m\u\e[m\e[1;35m@\e[m\e[32m\h\e[m \e[1;35m\w\a\e[1;37m $(terminal_git_status) \e[m\n\$ '

# Load Colors
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Color Common Commands
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'



# -----------------------------------------------------------------------------
# Piece of Mind -- Avoid Confusion
# -----------------------------------------------------------------------------

# I have found the light
alias emacs='vim'
alias nano='vim'
