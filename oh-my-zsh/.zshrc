# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="ys"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git common-aliases osx zsh-autosuggestions)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:$HOME/bin"

# Path to oh-my-zsh script
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi

# Setup python
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Setup ruby
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi
