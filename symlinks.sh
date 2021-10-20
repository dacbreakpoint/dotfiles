#!/bin/sh

echo "Installing Symlinks..."

## Symlinks

# Git
ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig

# zsh
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

# yabai
ln -sf ~/.dotfiles/yabai/yabairc ~/.yabairc