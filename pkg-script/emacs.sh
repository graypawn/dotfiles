#!/usr/bin/env bash
OPTIONS=${@:3}
EMACS_DIR=$HOME/.emacs.d
sudo pacman $@
sudo pacman -S ttf-baekmuk $OPTIONS
sudo pacman -S adobe-source-code-pro-fonts $OPTIONS
sex emacs-mozc
git clone git@github.com:graypawn/emacs.git $EMACS_DIR
cd $EMACS_DIR

# Daemon
mkdir -p ~/.config/systemd/user/
cp $EMACS_DIR/utils/emacs.service ~/.config/systemd/user/
systemctl --user enable emacs
