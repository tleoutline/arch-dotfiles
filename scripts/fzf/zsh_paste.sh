# fzf path pickers to insert to zsh
# use in zsh with ctrl-f

function _fz_jump_paste_command {
    local directory="$1"
    LBUFFER="${LBUFFER}$directory"
    zle reset-prompt > /dev/null 2>&1
}

fzp() {
  local result
  local fzf_args=(
    --height 40%
    --reverse
    --ansi \
    --bind "ctrl-h:reload(fd -UL)" \
    --bind "ctrl-b:reload(fd -L -E '.git')" \
    +m \
    --header="enter:paste  ctrl-h:show hidden  ctrl-b: hide hidden" \
    --tac
    )
    
  
  local lines=$(fd -L -E '.git' | fzf $fzf_args)
  local result=$(tail -1 <<< "$lines")

  if [[ -n "$result" ]]; then
    eval -- "_fz_jump_paste_command \"\$result\""
  fi
}

zle -N fzp
bindkey  fzp
