#!/bin/sh
# if you are not me, replace my account with your own.
# this should be the only place where my username specifically is mentioned.
USERNAME='@lijero:matrix.qipl.org'
CURRENT_DIR=`pwd`
cd software/matrix-appservice-discord
npm run adminme -- -u "$USERNAME" -p '100' -r "$1"
cd $CURRENT_DIR
