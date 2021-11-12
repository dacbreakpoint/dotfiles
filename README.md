# dotfiles

## WARNING: Work In Progress - Untested configuration!


Some of **my** configuration files for macOS.

## Install

```shell
mkdir ~/.dotfiles
cd ~/.dotfiles
git clone https://github.com/dacbreakpoint/dotfiles.git .
sh install.sh
```



## Pre steps
- [ ] Update operating system
- [ ] Install xcode `xcode-select --install`
- [ ] Install homebrew, see <https://brew.sh/>



## Manual installs
- [ ] Docker
- [ ] Parallels
- [ ] Node Version Manager, see <https://github.com/nvm-sh/nvm>
- [ ] App store installations
    - [ ] Things 3
- [ ] Install global npm packages
    - `@angular/cli`
    - `expo-cli`

## Manual configuration steps
- [ ] SSH configuration
    - [ ] Create a device specific key: `ssh-keygen -t ed25519 -a 100 -C "me@DEVICE`
    - [ ] Copy existing ssh config file (for existing host name aliases)
    - [ ] Copy generated public key to each server: `ssh-copy-id <user>@<server-ip>`
- [ ] Alfred configuration
    - [ ] Remove spotlight default shortcut
    - [ ] Assign alfred hotkey
    - [ ] Register alfred license key
    - [ ] Remove unnecessary web searches
    - [ ] Create new web searches (npm, maven)
- [ ] iTerm2
    - [ ] Register a global hotkey within the iTerm2 settings menu
- [ ] iStat Menus
    - [ ] Register license
    - [ ] Configure necessary elements

## ToDos
- [ ] Configuration of yabai and skhd, see <https://blog.dsubachev.com/install-a-tiling-window-manager-on-your-mac/> and yabai examples <https://github.com/koekeishiya/yabai/tree/master/examples>
- [ ] Dont use symlinks, switch to a bare git repository with different branches for each machine, see <https://www.atlassian.com/git/tutorials/dotfiles>
- [ ] Create a **global** `gitignore`
- [ ] Create my own vs-code configuration
- [ ] Create useful aliases (like colorizes), see <https://github.com/LukeSmithxyz/voidrice> (in `.config/shell/aliasrc`)