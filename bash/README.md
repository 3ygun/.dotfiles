# Bash

<!-- TOC depthFrom:2 -->

- [Install](#install)
- [Files](#files)

<!-- /TOC -->

## Install

**NOTE**: Make sure the common install instructions are complete [see Install](README.md). Specifically, that the `DOTFILES` environment variable has been configured.

1. Run `./bash/setup-bash.sh`
2. Reload terminal and/or `source ~/.bash_profile`

## Files

I've distributed my bash config into a few files for easier editing. See `.bashrc` for how the files are loaded. Here is a description of each:

Name | Description
--- | --- | ---
`.bash_aliases` | General alias creation, configuration, etc.
`.bash_profile` | Loads the `.bashrc`
`bashrc` | Loads every other bash configuration file
`base.bashrc` | Initializes the basics of the environments `.bashrc` based on the Bash on Windows version
`commands.bash_aliases` | Quality of life bash commands (ex: `extract <file>` to extract the contents)
`keys.sh` | Place your environment variables and keys here
`setup-bash.sh` | Used to configure an bash environment after downloading `.dotfiles` onto a new machine
`setup.bash_aliases` | Initializes the stylings and defaults of the bash environment which are aliases
`specifics.sh` | Place an specific bash aliases, environment variables and commands that shouldn't be shared between environments
