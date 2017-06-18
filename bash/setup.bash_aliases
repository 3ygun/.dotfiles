# -----------------------------------------------------------------------------
# Terminal -- Styling
# -----------------------------------------------------------------------------

# Prompt Styling
export PS1='\n${debian_chroot:+($debian_chroot)}\e[0;32m\u\e[m\e[01;35m@\e[m\e[0;32m\h\e[m \e[01;35m\w\a\e[m\n\$ '

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
