# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x `which tput` ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    export CLICOLOR=yes
    PS1='${debian_chroot:+($debian_chroot)}\[\e[0m\]`a=$?;if [ $a -ne 0 ];then a="  "$a; echo -ne "\[\e[s\e[1A\e[$((COLUMNS-2))G\e[31m\e[1;41m${a:(-3)}\e[u\]\[\e[0m\e[7m\e[2m\]";fi`\[\e[1;32m\]\u@\h:`b=$(git branch 2>/dev/null | sed -e "/^ /d" -e "s/* \(.*\)/\1/"); if [ "$b" != "" ]; then echo -ne "\[\e[0m\e[1;33m\]$b>\[\e[0m\]"; fi;`\[\e[0m\e[1;34m\]\W\[\e[1;34m\]\$ \[\e[0m\]'
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    # PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f $HOME/.profile ]; then
    . $HOME/.profile
fi

# set PATH so it includes user's private bin if it exists
GAE_PATH=$HOME/bin/google_appengine
[ -d "$GAE_PATH" ] && PATH="$PATH:$GAE_PATH"
ANDROID_SDK_PATH=$HOME/bin/android-sdk-linux_x86/tools
[ -d "$ANDROID_SDK_PATH" ] && PATH="$PATH:$ANDROID_SDK_PATH"
HOME_BIN=$HOME/bin
[ -d $HOME_BIN ] && PATH="$HOME/bin:$PATH"
export PATH

# if [[ $(tty) = /dev/tty* ]]; then
#     export LANG=C
#     export LANGUAGE=C
# else
#     export LANG="zh_CN.UTF-8"
# fi

CDPATH=.:$HOME:$HOME/Projects

CHS_COMPLETION=$HOME/bin/chs_completion
[ -e "$CHS_COMPLETION" ] && . "$CHS_COMPLETION"
HG_COMPLETION=$HOME/.hg_files/bash-completion-hg
[ -e "$HG_COMPLETION" ] && . "$HG_COMPLETION"

DEBEMAIL=quanxunzhen@gmail.com
DEBFULLNAME="Quan Xunzhen"
export DEBEMAIL DEBFULLNAME
EDITOR=vim
HGMERGE=meld
export EDITOR HGMERGE
