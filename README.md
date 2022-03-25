# dotfiles

ℹ️ This repository contains some of **my personal** configuration files and installation instructions for my current macOS setup.

Feel free to explore the repository and get anything you need 😬

### You might be interested in:
* 🍎[`Brewfile`](.dotres/macos/Brewfile) Contains a list of installed software

## Initial preparations

- [ ] Update operating system
- [ ] Install xcode `xcode-select --install`
- [ ] Install homebrew, see <https://brew.sh/>

## Installation

⚠️ **Please note, that this is my personal installation guide. All settings are tailored to my needs and must be adjusted accordingly!**

```shell
cd ~
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
git clone --bare https://github.com/dacbreakpoint/dotfiles.git $HOME/.cfg
mkdir -p .config-backup && dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
dotfiles config --local status.showUntrackedFiles no
sh ~/.dotres/install.sh
```

## Post installations

- [ ] Docker
- [ ] Parallels
- [ ] Node Version Manager, see <https://github.com/nvm-sh/nvm>
- [ ] App store installations
  - [ ] Things 3
  - [ ] Flow - Fokus & Pomodoro Timer
  - [ ] MindNode
  - [ ] Yubico Authenticator
- [ ] YubiKey Manager <https://www.yubico.com/support/download/yubikey-manager/>
- [ ] Install global npm packages
  - `@angular/cli`
  - `expo-cli`

## Manual configuration steps

- [ ] Apple
  - [ ]	System Preferences -> Sound -> Disable: "Play sound on startup" and "Play user interface sound effects"
  - [ ]	Add calendar accounts
- [ ] SSH configuration
  - [ ] Create a device specific key: `ssh-keygen -t ed25519 -a 100 -C "me@DEVICE`
  - [ ] Copy existing ssh `config` file (for existing host name aliases)
  - [ ] Copy generated public key to each server: `ssh-copy-id <user>@<server-ip>`
- [ ] Alfred configuration
  - [ ] Remove spotlight default shortcut
  - [ ] Assign alfred hotkey
  - [ ] Register alfred license key
  - [ ] Remove unnecessary web searches
  - [ ] Create new web searches (npm, maven)
  - [ ] Install workflows
    - [ ] Github workflow, see <https://github.com/gharlan/alfred-github-workflow>
	- [ ] Things 3 integration, see <https://culturedcode.com/things/support/articles/2803574/>
	- [ ] Language translator, see <https://github.com/alexander-heimbuch/linguee-alfred-workflow>
- [ ] iTerm2
  - [ ] Register a global hotkey within the iTerm2 settings menu
  - [ ] Keys -> Key Bindings -> Remove "Cycle Tab"-Binding and adapt "Next-/Previous Tab" configuration
  - [ ] Profiles -> Terminal-Tab -> Silence Bell & Flash visual Bell
  - [ ] Advanced -> Type "visual bell" -> Enable:  "Visual bell flashes the whole screen"
- [ ] iStat Menus
  - [ ] Register license
  - [ ] Configure necessary elements

## ToDos

- [ ] Configuration of yabai and skhd, see <https://blog.dsubachev.com/install-a-tiling-window-manager-on-your-mac/> and yabai examples <https://github.com/koekeishiya/yabai/tree/master/examples>
- [ ] Create a **global** `gitignore`
- [ ] Create my own vs-code configuration
- [ ] Create useful aliases (like colorizes), see <https://github.com/LukeSmithxyz/voidrice> (in `.config/shell/aliasrc`)
