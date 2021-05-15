function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo "%{$fg[cyan]%}("`basename $VIRTUAL_ENV`")%{$reset_color%}"
}

function mozconfig_info {
    [ $MOZCONFIG ] && echo "%{$fg[magenta]%}[${MOZCONFIG#mozconfig-}]%{$reset_color%}"
}

PROMPT='%{%(?,$fg[green],$fg_bold[red])%}%3<<  %?%<<^%{$reset_color%}%{$fg_bold[green]%}%n@%m:%{$reset_color%}$(virtualenv_info)$(mozconfig_info)$(git_prompt_info)%{$fg_bold[blue]%}%1c 
%{$fg_bold[blue]%}%h-%(#.#.$)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=">%{$reset_color%}"
ZSH_THEME_TERM_TITLE_IDLE="%c: %m"

VIRTUAL_ENV_DISABLE_PROMPT=1
