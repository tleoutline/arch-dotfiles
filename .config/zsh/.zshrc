zs_set_path=1
. /usr/share/autoenv-git/activate.sh
eval "$(zoxide init zsh)"
. '/usr/share/zsh-antidote/antidote.zsh'
antidote load

run-compinit
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

export FZF_MARKS_FILE=${HOME}/.config/fzf-marks
bindkey ^g fzm

eval "$(starship init zsh)"
eval "$(_PIO_COMPLETE=zsh_source pio)"
