#!/usr/bin/env bash
BUILD_DIR=/tmp/mozc

rm -rf $BUILD_DIR
git clone https://aur.archlinux.org/mozc.git $BUILD_DIR
cd $BUILD_DIR
sed -i 's/^#_emacs_mozc=\"yes\"/_emacs_mozc=\"yes\"/;s/^_ibus_mozc=\"yes\"/#_ibus_mozc=\"yes\"/' PKGBUILD

makepkg -si
