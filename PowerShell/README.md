<!-- TOC -->

- [PowerShell Install](#powershell-install)

<!-- /TOC -->

# PowerShell Install

**NOTE**: Make sure the common install instructions are complete [see Install](README.md). Specifically, that the `DOTFILES` environment variable has been configured.

1. Setup auto load:
    1. In admin PowerShell navigate to `C:/WINDOWS/system32/WindowsPowerShell/v1.0/`
    2. Execute
        ```PowerShell
        # Autoload the .dotfiles profile on startup
        echo '. "$env:userprofile\.dotfiles\PowerShell\profile.ps1"' > .\profile.ps1
        ```
    3. Restart your PowerShell
    4. Profit!
2. Add computer specific files:
    1. Add `keys.ps1` to `$env:DOTFILES/PowerShell/keys.ps1`
    2. Add `specifics.ps1` to `$env:DOTFILES/PowerShell/specifics.ps1`
