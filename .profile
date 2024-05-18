alias v='nvim'
alias vs='sudo -E nvim'
alias lzg='lazygit'
alias tma="tmux has-session 2> /dev/null && tmux a || tmux"

export EDITOR="$(which nvim)"
export FZF_DEFAULT_COMMAND="fd"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
