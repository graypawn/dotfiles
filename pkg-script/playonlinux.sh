#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# Author: graypawn (choi.pawn @gmail.com)
# Created: 2018-08-02
OPTIONS=${@:3}

sudo pacman $@
sudo pacman -S lib32-libpulse $OPTIONS
