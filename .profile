export EDITOR="$(which nvim)"
export FZF_DEFAULT_COMMAND="fd ."

export AUTOENV_ENABLE_LEAVE=any_strings_work
export AUTOENV_VIEWER=bat

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export NNN_FIFO=/tmp/nnn.fifo

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CONDARC="$XDG_DATA_HOME/conda"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export GOPATH="$XDG_DATA_HOME/go"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
export KERAS_HOME="$XDG_STATE_HOME/keras"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export PARALLEL_HOME="$XDG_CONFIG_HOME/parallel"
export PLATFORMIO_CORE_DIR="$XDG_DATA_HOME/platformio"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"

