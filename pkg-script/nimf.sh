#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# Author: graypawn (choi.pawn @gmail.com)
# Created: 2018-08-02
OPTIONS=${@:3}

cd /tmp
wget https://gitlab.com/nimf-i18n/nimf/raw/master/archlinux/PKGBUILD
makepkg -si PKGBUILD

