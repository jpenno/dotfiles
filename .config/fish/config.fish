if status is-interactive
    # Commands to run in interactive sessions can go here
  fish_add_path ~/bin/
  oh-my-posh init fish --config ~/.config/ohmyposh/zen.toml | source
end
