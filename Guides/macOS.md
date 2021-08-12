# MacOS

<!-- TOC depthFrom:2 -->

- [Commands](#commands)
    - [General](#general)
    - [Cli](#cli)
    - [Computer Science Specific](#computer-science-specific)
- [Software](#software)
- [Reference](#reference)
- [Troubleshooting](#troubleshooting)
    - [Stop receiving "Your disk is almost full" notification](#stop-receiving-your-disk-is-almost-full-notification)

<!-- /TOC -->

## Commands

### General

Command | Discription
--- | ---
`⌘`+`⇧`+`3` | Take a screen shot
`⌘`+`⇧`+`4` | Screen grab on Mac
`⌃`+(`←` or `→`) | Change desktops

- Edit `/etc/paths` to add/remove things from the `$PATH`

### Cli

- Save unused command `ctrl` + `u`
- Recall unused command `ctrl` + `y`
- Find who's using the port? `lsof -i :8200` --> `kill X` (process that appears from other command)

### Computer Science Specific

Command | Discription
--- | ---
`softwareupdate --install -a` | Update all XCode software
`open -a APPLICATION`       | Open an application from the command line (`open -a Github\ Desktop`)

## Software

- [Homebrew](https://brew.sh/)
    - "The missing package manager for macOS"
- [Sequel Pro Keyboard Shortcuts](https://sequelpro.com/docs/get-started/keyboard-shortcuts)
- [Spectacle App](https://www.spectacleapp.com/)
    - Have actual window resizing in MacOS...
    - It's OSS [Github](https://github.com/eczarny/spectacle)
- [GIF Capture](https://www.cockos.com/licecap/)
- [OpenJDK](https://jdk.java.net/11/)
    - Install [OpenJDK 11 on macOS Mojave](https://solarianprogrammer.com/2018/09/28/installing-openjdk-macos/)
    - Setting [JAVA_HOME](http://www.mkyong.com/java/how-to-set-java_home-environment-variable-on-mac-os-x/)

## Reference

Key | Name
--- | ---
`⇧` | Shift
`⌘` | Command
`⌥` | Option
`⌃` | Control Key

## Troubleshooting

### Stop receiving "Your disk is almost full" notification

Based on [Silencing “Your disk is almost full” notification](https://apple.stackexchange.com/a/294132) I ran the following on Mojave 10.14.6

```bash
# See the settings available
grep -A6 debugLog <(strings $(find /System/Library/PrivateFrameworks -name diskspaced -print -quit))

# Let the notification timer to be crazy long in the future
defaults write com.apple.diskspaced lowSpaceTimer 6000000

# Restart the application that sends the notification (2 ways I used both)
killall diskspaced

launchctl stop com.apple.diskspaced && launchctl start com.apple.diskspaced
```
