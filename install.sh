#!/bin/bash

# This is for GitHub's Codespaces setup

set -e

DOTFILES_PATH=$(pwd -P)

ln -sf "${DOTFILES_PATH}/bash/.bash_aliases" "${HOME}/.bash_aliases"
ln -sf "${DOTFILES_PATH}/bash/commands.sh" "${HOME}/.commands.sh"
