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
alias chg_libc='export LD_PRELOAD=/home/jp3bgy/Program/Sys/libc/lib/libc.so.6:$LD_LIBRARY_PATH'

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
JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/"

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
#eval "$(stack --bash-completion-script stack)"

#if [ -n "$SSH_CONNECTION" ] ; then
#    export LANG=ja_JP.UTF-8
#    export DefaultIMModule=ibus
#    export XMODIFIERS="@im=ibus"
#    export GTK_IM_MODULE=ibus
#    export QT_IM_MODULE=ibus
#    export IBUS_ENABLE_SYNC_MODE=1
#    export NO_AT_BRIDGE=1
#    xset -r 49
#    if test `ps auxw | grep $USER | grep -v grep | grep "ibus-daemon -d -x" 2> /dev/null | wc -l` -eq 0;
#    then
#        ibus-daemon -d -x &
#    fi
#fi

bindkey -v

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
umask 027

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# OPAM configuration
. /home/jp3bgy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
#alias coqide="coqide -R ~/Program/Test/cpdt/src Cpdt"
alias ssh-k8s="ssh jp3bgy@192.168.1.13 -D 55555 -i ~/.ssh/jp3bgy-c2000"
alias ssh-eccs="ssh 7212425603@ssh0-01.ecc.u-tokyo.ac.jp -D 55555 -i ~/.ssh/eccs.pri -t /bin/zsh "
alias udk="/home/jp3bgy/Program/Sys/minlinux/build_gdb/gdb/gdb -data-directory /home/jp3bgy/Program/Sys/minlinux/build_gdb/gdb/data-directory"
alias udk-server="/opt/intel/udkdebugger/bin/udk-gdb-server"
alias ssh-tsg="ssh jp3bgy@tsg.ne.jp -p 22000 -i /home/jp3bgy/Program/TSG/server_ed25519"
export PATH=$PATH:$HOME/Program/Browser/chromium/depot_tools:$HOME/.gem/ruby/2.5.0/bin:/home/jp3bgy/Program/Security/checksec.sh/:
alias chrome_env="export CHROME=$HOME/Program/Browser/chromium/chromium/src/out/Default"
export OVMF=/home/jp3bgy/Program/Sys/minlinux/edk2/Build/OvmfX64/DEBUG_GCC5/FV/OVMF.fd
export OVMF_R=/home/jp3bgy/Program/Sys/minlinux/edk2/Build/OvmfX64/RELEASE_GCC5/FV/OVMF.fd
export WATB=/home/jp3bgy/Program/Wasm/wabt/build
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/include/x86_64-linux-gnu/c++/8/:/usr/include/x86_64-linux-gnu/c++/8/:
export CPATH=$CPATH:/usr/lib/gcc/x86_64-linux-gnu/8/include/:/usr/lib/gcc/x86_64/8/include-fixed/:/usr/include/x86_64-linux-gnu/:
source ~/.cargo/env
export GLIBC_DEV=/home/jp3bgy/Program/Sys/libc/
alias gcc-libc-dev="gcc -g -Wl,-rpath=$GLIBC_DEV/lib/,--dynamic-linker=$GLIBC_DEV/lib/ld-linux-x86-64.so.2"
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
