# Path to your oh-my-zsh installation.
export ZSH="/home/devgrohl/.oh-my-zsh"

ZSH_THEME="fino-time"

plugins=(git docker)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Example aliases
alias v="nvim"
alias z="zellij a HOME"
alias conf_zsh="v ~/.zshrc"
alias conf_ohmyzsh="v ~/.oh-my-zsh"
alias ls="eza"
