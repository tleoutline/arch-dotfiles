if [ -f ~/.profile ]; then
  . ~/.profile
fi
ZDOTDIR=$HOME/.config/zsh
ZSH_CACHE="$XDG_CACHE_HOME/zsh"
export HISTFILE="$XDG_STATE_HOME"/zsh/history
ZSH_COMPDUMP=$ZSH_CACHE/zcompdump

