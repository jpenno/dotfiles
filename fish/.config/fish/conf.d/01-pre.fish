#
# pre - First things first.
#

# Add bin directories to path.
fish_add_path --prepend $HOME/.local/bin
fish_add_path --prepend $HOME/go/bin
fish_add_path --prepend $HOME/bin

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
