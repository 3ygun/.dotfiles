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
        # Compute the branch and change set
        local gitStatus="$(git status -s -b)"
        
        # Check if there are changes to commit?
        local change="$(echo $gitStatus | grep -oEm 1 'M\s+')"
        local changeSign=''
        if [[ -n $change ]]; then
            changeSign=' : *'
        fi

        local branch="$(echo $gitStatus | grep -oEim 1 '## (.+)\.\.\.' | cut -d ' ' -f 2 | cut -d . -f 1)"
        if [[ -n $branch ]]; then # Affirm there is a branch first? Validates git existence
            echo "($branch$changeSign)"
        fi   
    fi
}

# Prompt Styling
# https://stackoverflow.com/a/9911082/6480404
if [ -n "$BASH_VERSION" ]; then
    export PS1='\n\e[32m\u\e[m\e[1;35m@\e[m\e[32m\h\e[m \e[1;35m\w\a\e[1;37m $(terminal_git_status) \e[m\n\$ '
    export promptStyle="bash"
elif [ -n "$ZSH_VERSION" ]; then
    # https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
    # https://superuser.com/a/986820
    PROMPT_NEWLINE=$'\n'
    PROMPT="${PROMPT_NEWLINE}%F{blue}%n%f@%F{blue}%m%f %/${PROMPT_NEWLINE}%# "
    export promptStyle="zsh"
else
    # No prompt style currently
    export promptStyle="unknown"
fi

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
