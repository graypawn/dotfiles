#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# Author: graypawn (choi.pawn @gmail.com)
# Created: 2018-02-06
BASEDIR=$(dirname "$0")
LOCAL_ICON_DIR=$HOME/.local/share/icons/hicolor

install_icon_with_size () {
    local size=$1
    local icon_size_dir=$BASEDIR/$1
    for item in `ls -A $icon_size_dir`; do
        if [ $size = "scalable" ]; then
            cp $icon_size_dir/$item $LOCAL_ICON_DIR/scalable/apps/
        else
            xdg-icon-resource install --size $size $icon_size_dir/$item
        fi
    done
}

install_icon_with_size 48
install_icon_with_size 128
install_icon_with_size "scalable"

