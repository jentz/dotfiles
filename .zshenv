export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export JETBRAINS_INTELLIJ_ORIGINAL_ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export PATH=${PATH}:/opt/local/bin

# GO
export GOPATH=${HOME}/go
export PATH=${PATH}:${GOPATH}/bin

export EDITOR="vim"
export VISUAL="vim"

export LANG="sv_SE.UTF-8"
export LC_COLLATE="sv_SE.UTF-8"  
export LC_CTYPE="sv_SE.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="sv_SE.UTF-8"
export LC_NUMERIC="sv_SE.UTF-8"
export LC_TIME="sv_SE.UTF-8"
export LC_ALL=

