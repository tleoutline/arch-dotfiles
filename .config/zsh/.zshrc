. ~/.profile
. '/usr/share/zsh-antidote/antidote.zsh'
antidote load

ZSH_CACHE="$XDG_CACHE_HOME/zsh/"
export HISTFILE="$XDG_STATE_HOME"/zsh/history
ZSH_COMPDUMP=$ZSH_CACHE/zcompdump

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

# autoload -Uz compinit
fpath+=(~/.script/completions/)
bindkey ^g fzm

compdef z=cd  # Using cd's completion for zoxide
compdef v=nvim

. ~/.script/nnn.sh
. ~/.script/tre.sh
. ~/.script/lsd.sh
. ~/.script/proj-init.zsh

for file in ~/.script/fzf/*; do
  . "$file"
done

. "$HOME/.config/zsh/.zstyle"

# PlatformIO Core completion support
eval "$(_PIO_COMPLETE=zsh_source pio)"

. /usr/share/autoenv-git/activate.sh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
