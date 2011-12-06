setopt promptsubst
autoload -U promptinit
promptinit

autoload -U compinit
compinit

## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE

# emacs bindings, -v for vi
bindkey -e

PS1="%{%F{green}%}%m%{%f%} %c %{%F{yellow}%}→%{%f%} "

export RUBYOPT=rubygems

# replace system vi (which itself is a symlink to system vim) with homebrew vim
# "vim" will pick up from /usr/local/bin
alias vi=vim

export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# of course
export EDITOR='vim'
export LESSEDIT='vim'
export PAGER="/bin/sh -c \"col -b -x | vim -R -c 'set ft=man' -c 'nmap q :q<cr>' -c 'set nonumber' - \""

# homebrew override
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# xcode
export PATH=$PATH:/Developer/usr/bin
# npm
export PATH=$PATH:/usr/local/share/npm/bin
# PHP
export PATH=$PATH:/usr/local/lib/php/bin
# Python
export PATH=$PATH:/usr/local/Cellar/python/2.7.1/bin

# node lib path
export NODE_PATH='.:/usr/local/lib/node'

export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8

alias ls="ls -l"
alias la="ls -la"

# Git
alias g="git"

# Subversion
alias s="svn"
alias sup="svn up --ignore-externals"
alias sst="svn st --ignore-externals"

alias t=tmux

alias d="dirs -v"

alias irc="ssh mannerheim -t 'tmux at'"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
