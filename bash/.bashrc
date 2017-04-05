# -----------------------------------------------------------------------------
# .bashrc
#
# Move this to ~/.bashrc which will import the other files
# -----------------------------------------------------------------------------

# Get base configuration
if [ -f ~/.base_config.sh ]; then
    . ~/.base_config.sh
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Get computer config specifics
if [ -f "$DOTFILES"/bash/.specifics.sh ]; then
    . "$DOTFILES"/bash/.specifics.sh
fi

# Load setup
# if [ -f "$DOTFILES"/bash/.bash_setup.sh ]; then
#     . "$DOTFILES"/bash/.bash_setup.sh
# fi

# Load aliases
if [ -f "$DOTFILES"/bash/.bash_aliases ]; then
    . "$DOTFILES"/bash/.bash_aliases
fi

# Load keys
if [ -f "$DOTFILES"/bash/.keys.sh ]; then
    . "$DOTFILES"/bash/.keys.sh
fi


# -----------------------------------------------------------------------------
# Other
# -----------------------------------------------------------------------------

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# David Def :: pages for long output, think git diff
# export SYSTEMD_PAGER=