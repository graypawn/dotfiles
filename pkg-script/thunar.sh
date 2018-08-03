#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# Author: graypawn (choi.pawn @gmail.com)
# Created: 2018-02-05
OPTIONS=${@:3}

sudo pacman $@ 
sudo pacman -S thunar-volman $OPTIONS

# 필요하나 Gnome 의존성으로 이미 설치되어있다.
# sudo pacman -S gvfs $OPTIONS
# sudo pacman -S gvfs-mtp $OPTIONS
# sudo pacman -S gvfs-smb $OPTIONS

xdg-mime default Thunar-folder-handler.desktop inode/directory
