#!/usr/bin/env bash
DELETE_PKG=totem
sudo pacman -Rs $DELETE_PKG --noconfirm 2>/dev/null
sudo pacman $@
