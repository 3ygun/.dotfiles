# -----------------------------------------------------------------------------
# .bashrc
#
# Move this to ~/.bashrc which will import the other files
# -----------------------------------------------------------------------------

# Pull in the profile and alias definitions.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.dotfiles/.bashrc ]; then
    . ~/.dotfiles/.bashrc
fi

if [ -f ~/.dotfiles/.bash_aliases ]; then
    . ~/.dotfiles/.bash_aliases
fi

# -----------------------------------------------------------------------------
# Other
# -----------------------------------------------------------------------------

