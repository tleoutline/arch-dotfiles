# fzf picker for zoxide under curent dir
 
fz() {
  local result
  local fzf_args=(
    --height 40%
    --reverse
    --tac
    --ansi \
    --bind "ctrl-h:reload(fd -Htd --no-ignore)" \
    --bind "ctrl-b:reload(fd -Htd -E '.git')" \
    +m \
    --preview "lsd --tree --depth=2 --color always --icon always --group-dirs=first -1 {}" \
    --header="enter:jump  ctrl-h:show hidden  ctrl-b: hide hidden" \
    )
    
  local lines=$(fd -Htd -E '.git' | fzf $fzf_args)
  local result=$(tail -1 <<< "$lines")

  if [[ -n "$result" ]]; then
    z "$result"
  fi
}
