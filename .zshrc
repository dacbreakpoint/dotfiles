# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Default theme
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
  git
  docker
  docker-compose
  nvm
  macos
  ng
  zsh-autosuggestions 
  zsh-completions 
  zsh-syntax-highlighting
  zsh-better-npm-completion
)

# Custom code to enable homebrew completion
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

source $ZSH/oh-my-zsh.sh

# Alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ll="ls -lah"

# Let the gpg-agent know which shell we are using
export GPG_TTY=$(tty)

# NVM related configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add homebrew jdk path
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# Add mysql-client path
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
