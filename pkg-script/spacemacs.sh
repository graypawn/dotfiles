#!/usr/bin/env bash
OPTIONS=${@:3}
BASEDIR=$(dirname "$0")
EMACS_DIR=$HOME/.emacs.d
DATA_DIR=$BASEDIR/../data
sudo pacman $@
sudo pacman -S ttf-baekmuk $OPTIONS
sudo pacman -S adobe-source-code-pro-fonts $OPTIONS
sex emacs-mozc
git clone git@github.com:graypawn/spacemacs.git $EMACS_DIR

# Daemon
mkdir -p ~/.config/systemd/user/
cp $DATA_DIR/emacs.service $HOME/.config/systemd/user/
systemctl --user enable emacs
