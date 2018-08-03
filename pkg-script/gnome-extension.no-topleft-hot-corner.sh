#!/usr/bin/env bash
BIN=$HOME/Documents/dotfiles/bin
OPTIONS=${@:3}

sudo pacman -S gnome-extension.no-topleft-hot-corner $OPTIONS
$BIN/enable-extension "'nohotcorner@azuri.free.fr'"

