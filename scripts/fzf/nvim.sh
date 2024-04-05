fv() {
  local result
  fzf_args=(
    --bind "ctrl-h:reload(fd -Htf -tl --no-ignore)" \
    --bind "ctrl-b:reload(fd -Htf -tl -E '.git')" \
    --bind "pgdn:preview-page-down" \
    --bind "pgup:preview-page-up" \
    --bind "ctrl-d:preview-half-page-down" \
    --bind "ctrl-u:preview-half-page-up" \
    -m \
    --preview 'bat --color always {}' \
    --header 'enter:open with nvim  tab:select  ctrl-b:hide hidden  ctrl-h:show hidden'
    )
  result=$(fd -Htf -E '.git' | fzf $fzf_args | tr '\n' ' ' | sed 's/ $//')

  if [[ -n "$result" ]]; then
    eval "nvim $@ $result"
  fi
}
