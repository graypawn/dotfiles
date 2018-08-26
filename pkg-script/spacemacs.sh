#!/usr/bin/env bash
OPTIONS=${@:3}
BASEDIR=$(dirname "$0")
EMACS_DIR=$HOME/.emacs.d
BACKUP_DIR=$HOME/Documents/dotfiles/backup/spacemacs
SPACEMACS_DIR=$HOME/Documents/spacemacs
sudo pacman $@
sudo pacman -S ttf-baekmuk $OPTIONS
sudo pacman -S adobe-source-code-pro-fonts $OPTIONS
sex emacs-mozc
git clone https://github.com/syl20bnr/spacemacs $EMACS_DIR
git clone git@github.com:graypawn/spacemacs.git $SPACEMACS_DIR

## DAEMON
systemctl --user enable emacs

## INSTALL SPACEMACS CONFIG
echo Clear $BACKUP_DIR
rm -rf $BACKUP_DIR
mkdir -p $BACKUP_DIR

echo copy spacemacs config
mv $HOME/.spacemacs $BACKUP_DIR 2>/dev/null
echo link spacemacs config
ln -s $SPACEMACS_DIR/.spacemacs $HOME/.spacemacs

LAYERS_FROM_DIR=$SPACEMACS_DIR/private
LAYERS_TO_DIR=$EMACS_DIR/private

# for item in $LAYERS_FROM_DIR/*
for item in `ls -A $LAYERS_FROM_DIR`; do
    echo copy "$item"
    mv $LAYERS_TO_DIR/$item $BACKUP_DIR 2>/dev/null
    echo link "$item"
    ln -s $LAYERS_FROM_DIR/$item $LAYERS_TO_DIR/
done
