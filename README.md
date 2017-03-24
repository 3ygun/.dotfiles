<!-- TOC -->

- [.dotfiles](#dotfiles)
- [Install](#install)

<!-- /TOC -->

# .dotfiles

My .dotfiles for aliases, profiles, [guides](Guides/) and sanity

# Install

1. Clone the repository, preferably, to `~/` making `~/.dotfiles`
2. Add a `DOTFILES` environment variable pointing to the cloned repository
    - For Bash use `export DOTFILES='<PathToDotfiles>\.dotfiles'`. Place this line into a `~/.base_config.sh` file for future auto loading.
        - e.g. :  `echo "export DOTFILES='<PathToDotfiles>\.dotfiles'" > ~/.base_config.sh`
    - For Windows search "Edit the system environment variables" adding a `System variable` with the path to the `.dotfiles/` repository.
3. Specific instructions:
    - [Bash README.md](bash/)
    - [PowerShell README.md](PowerShell/)
