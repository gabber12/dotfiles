# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/home/ryan/.zshrc'

autoload -U compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
[[ $- != *i* ]] && return





autoload -U promptinit
promptinit
autoload -U colors && colors


# PROMPT="%{$fg_bold[red]%}%n@%m%{$reset_color%} %{$fg_no_bold[gray]%}%~%{$reset_color%} %# "
PROMPT="%{$fg_bold[red]%}%n@%m%{$reset_color%} %~ λ "
RPROMPT="%{$fg_no_bold[green]%}%?%{$reset_color%}"
alias ls='ls --color=auto'
alias bc='bc -q'
alias gdb='gdb -q'
alias notes="$EDITOR notes-$(date +%F).txt"
alias fml='rlwrap sml'
alias ntest='ping -c4 8.8.8.8'

bindkey "^R" history-beginning-search-backward

if [ -n "$DISPLAY" ]; then
	export BROWSER=chromium
	export EDITOR=gvim
else
	export BROWSER=links
	export EDITOR=vim
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

