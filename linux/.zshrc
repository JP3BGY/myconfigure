# The following lines were added by compinstall
zstyle :compinstall filename '/home/jp3bgy/.zshrc'

autoload -Uz compinit && compinit
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

autoload colors
colors
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'
alias upd_zsh='export PATH=$PATH'

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
JAVA_HOME="/etc/alternatives/java_sdk/"

PATH=~/.cargo/bin:~/.local/bin:~/cdtdebugger:$PATH:
export PATH
export JAVA_HOME
setopt nonomatch

alias py2=python2
alias py3=python3
alias py=python
alias ipy=ipython
alias ipy2=ipython2
alias ipy3=ipython3
alias msbuild="dotnet build"
alias zshup="export PATH=\$PATH"
export XDG_CONFIG_HOME=~/.config
export PATH=~/node/bin/:$PATH:
eval "$(stack --bash-completion-script stack)"

if [ -n "$SSH_CONNECTION" ] ; then
    export LANG=ja_JP.UTF-8
    export DefaultIMModule=ibus
    export XMODIFIERS="@im=ibus"
    export GTK_IM_MODULE=ibus
    export QT_IM_MODULE=ibus
    export IBUS_ENABLE_SYNC_MODE=1
    export NO_AT_BRIDGE=1
    xset -r 49
    if test `ps auxw | grep $USER | grep -v grep | grep "ibus-daemon -d -x" 2> /dev/null | wc -l` -eq 0;
    then
        ibus-daemon -d -x &
    fi
fi

