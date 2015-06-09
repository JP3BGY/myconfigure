# The following lines were added by compinstall
zstyle :compinstall filename '/home/jp3bgy/.zshrc'

autoload -Uz compinit
compinit

autoload colors
colors
alias ls='ls --color=auto'

HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups
setopt hist_ignore_space

export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

case "${TERM}" in
kterm*|xterm)
    precmd() {
        echo -ne "\033]0;${USER}@${HOST}\007"
    }
    ;;
esac 

PROMPT='[%F{magenta}%B%n%b%f@%F{blue}%U%m%u%f]# '
RPROMPT='[%F{green}%d%f]'

# End of lines added by compinstall
xmodmap ~/.Xmodmap
PATH=$PATH:/home/jp3bgy/android-sdk-linux/tools:/home/jp3bgy/idea-IC-139.225.3/bin:/home/jp3bgy/.gem/ruby/2.1.0/bin
export PATH
