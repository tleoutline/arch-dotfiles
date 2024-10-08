zs_set_path=1
. /usr/share/autoenv-git/activate.sh
eval "$(zoxide init zsh)"
. '/usr/share/zsh-antidote/antidote.zsh'
antidote load

setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

run-compinit
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

export FZF_MARKS_FILE=${HOME}/.config/fzf-marks

eval "$(starship init zsh)"
eval "$(_PIO_COMPLETE=zsh_source pio)"
