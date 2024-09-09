# fzf picker for zoxide under curent dir
 
fz() {
  local result
  local fzf_args=(
    --height 40%
    --reverse
    --tac
    --ansi \
    --bind "ctrl-h:reload(fd -Lutd)" \
    # -u => --unrestricted == --hidden --no-ignore
    --bind "ctrl-b:reload(fd -Ltd -E '.git')" \
    --bind "pgdn:preview-page-down" \
    --bind "pgup:preview-page-up" \
    --bind "ctrl-d:preview-half-page-down" \
    --bind "ctrl-u:preview-half-page-up" \
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
