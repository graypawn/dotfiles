#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# Author: graypawn (choi.pawn @gmail.com)
# Created: 2018-01-27
OPTIONS=${@:3}

sudo pacman $@
yaourt -S virtualbox-ext-oracle $OPTIONS
echo "vboxdrv" | sudo tee -a /etc/modules-load.d/virtualbox.conf
