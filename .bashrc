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
if [ -f ~/.specific.sh ]; then
    . ~/.specific.sh
fi

# Load setup
if [ -f ~/.dotfiles/.bash_setup.sh ]; then
    . ~/.dotfiles/.bash_setup.sh
fi

# Get the aliases
if [ -f ~/.dotfiles/.bash_aliases ]; then
    . ~/.dotfiles/.bash_aliases
fi

# Get keys
if [ -f ~/.keys.sh ]; then
    . ~/.keys.sh
fi


# -----------------------------------------------------------------------------
# Other
# -----------------------------------------------------------------------------

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# David Def :: pages for long output, think git diff
# export SYSTEMD_PAGER=
