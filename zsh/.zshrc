export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/node@14/bin:$PATH"

export EDITOR=/usr/bin/vim

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# For git commit signing
export GPG_TTY=$(tty) 


ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"



# History settings

export HISTSIZE=10000  
export SAVEHIST=100000 
HIST_STAMPS="dd-mm-yyyy"

plugins=(
  git 
  brew 
  gitignore 
  zsh-autosuggestions 
  zsh-completions 
  zsh-syntax-highlighting
  zsh-better-npm-completion
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/zsh/aliases.zsh

