# Install packages using yay (change to pacman/AUR helper of your choice)
yayin() {
    if [ $1 ]; then
        yay -Ssq "$1" 2>/dev/null | fzf -m --preview 'yay -Si {1}' --preview-window 'right,70%' | xargs -ro yay -S
    else
        yay -Slq 2>/dev/null | fzf -m --preview 'yay -Si {1}' --preview-window 'right,70%' | xargs -ro yay -S
    fi
}
# Remove installed packages (change to pacman/AUR helper of your choice)
yayrm() {
    yay -Qq | fzf -q "$1" -m --preview 'yay -Qi {1}' --preview-window 'right,70%' | xargs -ro yay -Rns
}
