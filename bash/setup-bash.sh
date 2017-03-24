#!/bin/sh

: ${DOTFILES?"Need to set DOTFILES environment variable"}

if [ -f $DOTFILES/bash/.bashrc ]; then
    cp $DOTFILES/bash/.bashrc ~/.bashrc
else
    echo "File not found: \$DOTFILES/bash/.bashrc"
    exit 1
fi
if [ -f $DOTFILES/bash/.bash_profile ]; then
    cp $DOTFILES/bash/.bash_profile ~/.bash_profile
else
    exho "File not found: \$DOTFILES/bash/.bash_profile"
    exit 1
fi
