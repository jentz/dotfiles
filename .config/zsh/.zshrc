#!/usr/bin/env zsh

source $HOME/.asdf/asdf.sh

fpath=(${ASDF_DIR}/completions $fpath)

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)
fpath=($ZDOTDIR/plugins $fpath)


source $ZDOTDIR/plugins/bd.zsh

autoload -Uz compinit && compinit

# kubectl completions with alias support
compdef __start_kubectl k

# setup zoxide
eval "$(zoxide init zsh)"

# add rancher desktop commands to the path
path+=("$HOME/.rd/bin")
export PATH

HIST_STAMPS="yyyy-mm-dd"
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

source $XDG_CONFIG_HOME/alias/alias
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -e

eval "$(direnv hook zsh)"

eval "$(starship init zsh)"
