#!/bin/sh
ROOT_PATH=`pwd`
CONFIG_PATH="$ROOT_PATH/config"
cd software/matrix-appservice-irc
yarn
node app.js -r -f $CONFIG_PATH/matrix-appservice-irc/registration.yaml -u "http://localhost:9999" -c $CONFIG_PATH/matrix-appservice-irc/config.yaml.real -l irc_bot
