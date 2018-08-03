#!/usr/bin/env bash
OPTIONS=${@:3}
EMACS_DIR=$HOME/.emacs.d
sudo pacman $@
git clone git@github.com:graypawn/emacs.git $EMACS_DIR
cd $EMACS_DIR
git submodule init
git submodule update
sudo cp $EMACS_DIR/utils/emacs-daemon /usr/local/bin/emacs-daemon
mkdir -p ~/.config/systemd/user/
cp $EMACS_DIR/utils/emacs.service ~/.config/systemd/user/
sudo pacman -S aspell-en $OPTIONS
systemctl --user enable emacs
