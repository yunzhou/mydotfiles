#!/bin/bash

#install nerd font
curl -sS https://webi.sh/nerdfont | sh
# link alacritty
ln -s ~/src/mydotfiles/alacritty/alacritty.toml  $HOME/.config/alacritty/alacritty.toml

#tmux config
ln -s ~/src/mydotfiles/tmux/tmux.conf $HOME/.tmux.conf
