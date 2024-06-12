#
# env - Set environment vars.
#

# Set vars for dotfiles and special dirs.
set -g ZDOTDIR $XDG_CONFIG_HOME/zsh
set -gx DOTFILES $HOME/.dotfiles
set -gx MY_PROJECTS $HOME/Projects

# Set editor variables.
set TERM "xterm-256color"                         # Sets the terminal type
set -gx PAGER less
set -gx EDITOR nvim

### "nvim" as manpager
set -x MANPAGER "nvim +Man!"

# set key bindings
set -U fish_key_bindings fish_default_key_bindings
