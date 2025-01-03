# 環境変数
export LANG=ja_JP.UTF-8
export HISTFILE=~/.config/zsh/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

setopt hist_ignore_dups
setopt inc_append_history
setopt share_history

#### alias ####
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -al --color=auto'
alias vim=nvim

# git prompt options
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '

#### zplug ####
source ~/.config/zsh/zsh_plugs/git-prompt.sh
source ~/.config/zsh/zsh_plugs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh_plugs/zsh-autosuggestions/zsh-autosuggestions.zsh

zle -N select-history
bindkey '^r' select-history

source ~/.config/zsh/functions.sh

export EDITOR=nvim
