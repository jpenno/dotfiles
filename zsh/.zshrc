# configs
alias nvc='cd ~/.dotfiles/.config/nvim/ && nvim .'
alias wbc='cd ~/.dotfiles/.config/waybar/ && nvim .'
alias hypc='cd ~/.dotfiles/.config/hypr/ && nvim .'

# tmux
alias ta='tmux attach'
alias t='tmux'

# terminal
alias cl='clear'

# neovim
alias nf='nvim -c "Telescope oldfiles"'
alias n='nvim'

#list
alias ls='exa'
alias la='exa -a'
alias ll='exa -l'
alias lla='exa -a -l'
alias llg='exa -a -l --git'

# go
alias gr='go run .'
alias gt='go test'

# scripts
alias mb='moues_battery.py'

#youtube download
# alias yta-aac="yt-dlp --extract-audio --audio-format aac "
# alias yta-best="yt-dlp --extract-audio --audio-format best "
# alias yta-flac="yt-dlp --extract-audio --audio-format flac "
# alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
# alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "
#
# mpv
alias mpvnv='mpv --no-video'

# arch
alias update='sudo pacman -Syyu'

PATH=$PATH:~/.config/emacs/bin
PATH=$PATH:~/.cargo/bin
PATH=$PATH:~/.locl/bin
PATH=$PATH:~/go/bin/

export GTK_IM_MODULE='fctix'
export QT_IM_MODULE='fctix'
export SDL_IM_MODULE='fctix'
export xmodifiers='@im=fctix'

eval "$(zoxide init --cmd cd zsh)"

eval "$(starship init zsh)"
