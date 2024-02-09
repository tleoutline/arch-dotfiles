fv() {
  local result
  fzf_args=(
    --bind "ctrl-h:reload(fd -Htf --no-ignore)" \
    --bind "ctrl-b:reload(fd -Htf -E '.git')" \
    -m \
    --preview 'bat --color always {}' \
    )
  result=$(fd -Htf -E '.git' | fzf $fzf_args | tr '\n' ' ' | sed 's/ $//')

  if [[ -n "$result" ]]; then
    eval "nvim $@ $result"
  fi
}
