#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# Author: graypawn (choi.pawn @gmail.com)
# Created: 2018-01-29
OPTIONS=${@:3}

sudo pacman -S ibus-hangul $OPTIONS
yaourt -S ibus-mozc $OPTIONS
