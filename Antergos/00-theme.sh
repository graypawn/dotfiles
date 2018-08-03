#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# Author: graypawn (choi.pawn @gmail.com)
# Created: 2018-01-29

BASEDIR=$(dirname "$0")
DCONF_DIR=$BASEDIR/../dconf/
CACHE_FILE=$BASEDIR/../dot.log

## PREPARE
echo [`date "+%Y-%m-%d %T"`] Start : $0 >> $CACHE_FILE


## FUNCTION
yaourt_s () {
    local pkg=$1
    sudo pacman -S $pkg --noconfirm || {
        echo [`date "+%Y-%m-%d %T"`] --install failed: $pkg >> $CACHE_FILE;
        echo [`date "+%Y-%m-%d %T"`] Failed: $0 >> $CACHE_FILE;
        exit 1;
    }
}


## ICON
# yaourt_s numix-icon-theme-circle


## FONT
yaourt_s ttf-hack              # English (Mono)
yaourt_s noto-fonts-cjk        # CJK


## CONFIG
dconf load /org/gnome/ < $DCONF_DIR/gnome.theme.conf
dconf load /org/gnome/ < $DCONF_DIR/gnome.font.conf


## FINISH
echo -e "\033[91m"Completed"\033[0m"
echo [`date "+%Y-%m-%d %T"`] Passed: $0 >> $CACHE_FILE
