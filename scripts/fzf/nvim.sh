fv() {
  local result
  result=$(fd -Htf -E '.git' | fzf -m --preview 'bat --color always {}' | tr '\n' ' ' | sed 's/ $//')

  if [[ -n "$result" ]]; then
    eval "nvim $@ $result"
  fi
}
