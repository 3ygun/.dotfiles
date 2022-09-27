# -----------------------------------------------------------------------------
# ZSH Core
#
# Have this sourced from .zprofile and then have .zprofile sourced from .zshrc
# -----------------------------------------------------------------------------

# Get base configuration
if [ -f ~/.base_config.sh ]; then
    . ~/.base_config.sh
fi

# Get computer config specifics
if [ -f "$DOTFILES"/bash/specifics.sh ]; then
    . "$DOTFILES"/bash/specifics.sh
fi

# Load aliases setup
if [ -f "$DOTFILES"/bash/setup.sh ]; then
    . "$DOTFILES"/bash/setup.sh
fi

# Load aliases
if [ -f "$DOTFILES"/bash/.bash_aliases ]; then
    . "$DOTFILES"/bash/.bash_aliases
fi

# Load commands
if [ -f "$DOTFILES"/bash/commands.sh ]; then
    . "$DOTFILES"/bash/commands.sh
fi

# Load keys
if [ -f "$DOTFILES"/bash/keys.sh ]; then
    . "$DOTFILES"/bash/keys.sh
fi


# -----------------------------------------------------------------------------
# Other
# -----------------------------------------------------------------------------

alias sdf='source ~/.zshrc'
