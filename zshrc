SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

if [ -f ${HOME}/.profile ]; then
    source ${HOME}/.profile
fi

# Determine platform first (source gist: https://gist.github.com/mhoffman/4a5f34aaca066bb8469be26f36c7edb3)
export platform='unknown'
uname=$(uname)
if [[ "x${uname}" == "xDarwin" ]]; then
    export platform='mac'
    alias nproc="sysctl -n hw.physicalcpu"
elif [[ "x${uname}" == "xLinux" ]]; then
    export platform='linux'
fi

export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ZSH_THEME="robbyrussell" # default prompt
${SCRIPT_DIR}/check_spaceship.sh
ZSH_THEME="spaceship" # https://spaceship-prompt.sh/getting-started/#Requirements

source $ZSH/oh-my-zsh.sh
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

## for zoxide
if command -v zoxide &> /dev/null; then
    eval "$(zoxide init zsh)"
else
    echo "zoxide is not installed. check <https://github.com/ajeetdsouza/zoxide>"
fi

## fzf shell integration
 [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# alias tmux="TERM=screen-256color-bce tmux"
if [[ ${platform} == 'linux' ]]; then
    alias l="ls --color=auto -laF;pwd"
elif [[ ${platform} == 'mac' ]]; then
    alias l="ls -laF;pwd"
fi
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
alias .......="cd ../../../../../../"
alias ........="cd ../../../../../../../"
alias .........="cd ../../../../../../../../"
alias zshrc="source $HOME/.zshrc"
alias vimrc="vim --cmd \"source ~/.vimrc\""

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# tmux settings
export TERM=xterm-256color
#if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux attach -t default || tmux new -s default
#fi

# easy apt commands
alias aptup='sudo apt update && sudo apt upgrade -y'
alias apti='sudo apt install'
