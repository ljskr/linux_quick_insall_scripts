#!/bin/bash

set -e

# 设置 bash

cat << \EOF >> /root/.bashrc


#===============================
# block start
#===============================

PS1='\n${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# xterm title
case "$TERM" in
xterm*|rxvt*)
    # PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h \a\]$PS1"
    ;;
*)
    ;;
esac

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ll='ls $LS_OPTIONS -lh'
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#===============================
# block end
#===============================

EOF
