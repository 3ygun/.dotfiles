# -----------------------------------------------------------------------------
# .bashrc
#
# Move this to ~/.bashrc which will import the other files
# -----------------------------------------------------------------------------

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Get computer config specifics
if [ -f ~/.dotfiles/.specifics.sh ]; then
    . ~/.dotfiles/.specifics.sh
fi

# Load setup
if [ -f ~/.dotfiles/.bash_setup.sh ]; then
    . ~/.dotfiles/.bash_setup.sh
fi

# Load aliases
if [ -f ~/.dotfiles/.bash_aliases ]; then
    . ~/.dotfiles/.bash_aliases
fi

# Load keys
if [ -f ~/.dotfiles/.keys.sh ]; then
    . ~/.dotfiles/.keys.sh
fi


# -----------------------------------------------------------------------------
# Other
# -----------------------------------------------------------------------------

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# David Def :: pages for long output, think git diff
# export SYSTEMD_PAGER=
