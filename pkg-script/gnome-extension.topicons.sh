#!/usr/bin/env bash
BIN=$HOME/Documents/dotfiles/bin
OPTIONS=${@:3}

sudo pacman -S gnome-shell-extension-topicons $OPTIONS
$BIN/enable-extension "'TopIcons@phocean.net'"

