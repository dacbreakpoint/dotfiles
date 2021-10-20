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


## ToDos
- [ ] Install xcode `xcode-select --install`
- [ ] Configuration of yabai and skhd, see <https://blog.dsubachev.com/install-a-tiling-window-manager-on-your-mac/> and yabai examples <https://github.com/koekeishiya/yabai/tree/master/examples>
- [ ] Dont use symlinks, switch to a bare git repository with different branches for each machine, see <https://www.atlassian.com/git/tutorials/dotfiles>
- [ ] Create a **global** `gitignore`
- [ ] Create my own vs-code configuration
- [ ] Create useful aliases (like colorizes), see <https://github.com/LukeSmithxyz/voidrice> (in `.config/shell/aliasrc`)