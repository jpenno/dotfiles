#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='nvim'
export VISUAL='subl'

# configs
alias nvc='cd ~/.dotfiles/.config/nvim/ && nvim .'
alias wbc='cd ~/.dotfiles/.config/waybar/ && nvim .'
alias hypc='cd ~/.dotfiles/.config/hypr/ && nvim .'

# terminal
alias cl='clear'

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -alFh'
alias l='ls'
alias l.="ls -A | egrep '^\.'"

#youtube download
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "

# mpv
alias mpvnv='mpv --no-video'

# arch
alias update='sudo pacman -Syyu'

PS1='[\u@\h \W]\$ '

PATH=$PATH:~/.config/emacs/bin
PATH=$PATH:~/.cargo/bin
PATH=$PATH:~/.locl/bin
