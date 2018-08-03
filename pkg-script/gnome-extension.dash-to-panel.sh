#!/usr/bin/env bash
BIN=$HOME/Documents/dotfiles/bin
DELETE_PKG=gnome-shell-extension-dash-to-dock
OPTIONS=${@:3}

sudo pacman -Rs $DELETE_PKG --noconfirm 2>/dev/null
sudo pacman -S gnome-shell-extension-dash-to-panel $OPTIONS
$BIN/enable-extension "'dash-to-panel@jderose9.github.com'"

