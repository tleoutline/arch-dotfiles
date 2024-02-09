# fzf picker for zoxide under curent dir
# ignore .git folder
fz() {
  local result
  fzf_args=(
    --bind "ctrl-h:reload(fd -Htd --no-ignore)" \
    --bind "ctrl-b:reload(fd -Htd -E '.git')" \
    +m \
    --preview "lsd --tree --depth=2 --color always --icon always --group-dirs=first -1 {}" \
    )
  result=$(fd -Htd -E '.git' | fzf $fzf_args)

  if [[ -n "$result" ]]; then
    z "$result"
  fi
}
