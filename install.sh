#!/bin/bash

# This is for GitHub's Codespaces setup

cp .bash_aliases ~/.bash_aliases
cp commands.sh ~/commands.sh

set -e

SCRIPT_SETUP="$0"
SETUP_DIRECTORY=$(dirname $SCRIPT_SETUP)

cd $SETUP_DIRECTORY/..
DOTFILES_PATH=$(pwd -P)

FILES_TO_SYMLINK=(config gemrc pryrc tmux tmux-macos.conf tmux.conf)

# If the config directory already exists, then just symlink all of
# the contents instead.
if [ -d "${HOME}/.config" ]; then
	for CONFIG_FILE in $DOTFILES_PATH/config/*; do
		ln -sfv $CONFIG_FILE $HOME/.config/$(basename $CONFIG_FILE)
	done

	# Remove config from list since we've symlinked the contents.
	unset FILES_TO_SYMLINK[0]
fi

ln -sf "${DOTFILES_PATH}/bash/.bash_aliases" "${HOME}/.bash_aliases"
ln -sf "${DOTFILES_PATH}/bash/.commands.sh" "${HOME}/.commands.sh"

for FILE in "${FILES_TO_SYMLINK[@]}"; do
	ln -sf "${DOTFILES_PATH}/${FILE}" "${HOME}/.${FILE}"
done
