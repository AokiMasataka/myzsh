# 環境変数
export LANG=ja_JP.UTF-8
export HISTFILE=~/.config/zsh/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups

setopt inc_append_history
setopt share_history

autoload -Uz colors

export LSCOLORS=cxfxcxdxbxegedabagacad
alias ls='ls -GF'
alias la='ls -aGF'
alias ll='ls -lGF'
alias lla='ls -alGF'

#### alias ####

alias vim=nvim

#### git prompt ####

# read git-prompt
source ~/.config/zsh/zsh_plugs/git-prompt.sh

# read git-completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.config/zsh/zsh_plugs/git-completion.bash
autoload -Uz compinit && compinit

# git prompt options
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '

#### zplug ####
source ~/.config/zsh/zsh_plugs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh_plugs/zsh-autosuggestions/zsh-autosuggestions.zsh

zle -N select-history
bindkey '^r' select-history

source ~/.config/zsh/functions.sh

export EDITOR=nvim
