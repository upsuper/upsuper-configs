# set PATH so it includes user's private bin if it exists
NODE_BIN=$HOME/node_modules/.bin
[ -d $NODE_BIN ] && PATH="$NODE_BIN:$PATH"
HOME_BIN=$HOME/bin
[ -d $HOME_BIN ] && PATH="$HOME_BIN:$PATH"
export PATH

NODE_PATH=/usr/local/lib/node_modules
export NODE_PATH

# if [[ $(tty) = /dev/tty* ]]; then
#     export LANG=C
#     export LANGUAGE=C
# else
#     export LANG="zh_CN.UTF-8"
# fi

CDPATH=.:$HOME:$HOME/Projects

CHS_COMPLETION=$HOME/bin/chs_completion
[ -e "$CHS_COMPLETION" ] && . "$CHS_COMPLETION"

export CCACHE_COMPRESS=""

export HGMERGE=meld
export PGHOST=localhost

# System specific
case "$(uname -s)" in
    Darwin)
        NPROC=$(sysctl -n hw.ncpu)
        EDITOR="mvim -f"
        ;;
    Linux)
        NPROC=$(nproc)
        EDITOR=vim
        ;;
esac
export EDITOR
if [ "x$NPROC" != "x" ]; then
    export MAKEFLAGS=-j$NPROC
fi
