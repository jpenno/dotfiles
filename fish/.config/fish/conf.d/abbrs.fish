#
# abbrs
#

set -q MY_ABBRS_INITIALIZED; and return

abbr -a -- - 'cd -'
abbr -a -- n 'nvim'
abbr -a -- dot 'cd $DOTFILES'
abbr -a -- tarls 'tar -tvf'
abbr -a -- untar 'tar -xv'
abbr -a -- x exit

# single key
abbr -a -- c clear
abbr -a -- h 'history | fzf'
abbr -a -- t tmux
abbr -a -- ta tmux attach

#list
abbr -a -- ls 'exa'
abbr -a -- la 'exa -a'
abbr -a -- ll 'exa -l'
abbr -a -- lla 'exa -a -l'

# no need to run over-and-over
set -g MY_ABBRS_INITIALIZED true
