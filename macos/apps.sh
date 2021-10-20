#!/bin/sh

echo "Installing apps..."

# Install Brew
BREW_VAR=$(which brew)
if [ "$BREW_VAR" != "/usr/local/bin/brew" ]
then
	echo "Brew is missing. Installing brew..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Install Brew packages and apps, and AppStore apps
echo "Running Brewfile"
brew bundle --file="~/.dotfiles/macos/Brewfile"

# Install oh-my-zsh
echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install node version manager
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

echo "Installing global node apps"
npm install -g typescript \
               expo-cli \
			   @ionic/cli \
			   @angular/cli