#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# Author: graypawn (choi.pawn @gmail.com)
# Created: 2018-07-31

BASEDIR=$(dirname "$0")
CACHE_FILE=$BASEDIR/../dot.log

## PREPARE
echo [`date "+%Y-%m-%d %T"`] Start : $0 >> $CACHE_FILE

for pkg in $(cat "$BASEDIR/pkg_list.txt")
do
  sex $pkg --noconfirm
done

## FINISH
echo -e "\033[91m"Completed"\033[0m"
echo [`date "+%Y-%m-%d %T"`] Passed: $0 >> $CACHE_FILE
