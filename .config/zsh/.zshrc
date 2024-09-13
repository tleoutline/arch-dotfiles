. '/usr/share/zsh-antidote/antidote.zsh'
antidote load


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

export FZF_MARKS_FILE=${HOME}/.config/fzf-marks
bindkey ^g fzm

compdef z=cd  # Using cd's completion for zoxide
compdef v=nvim

# for file in ~/.script/fzf/*; do
#   . "$file"
# done


# PlatformIO Core completion support
eval "$(_PIO_COMPLETE=zsh_source pio)"

. /usr/share/autoenv-git/activate.sh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
