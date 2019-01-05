#!/bin/sh
ROOT_PATH=`pwd`
CONFIG_PATH="$ROOT_PATH/config"
cd software/matrix-appservice-irc
node app.js -c $CONFIG_PATH/matrix-appservice-irc/config.yaml.real -f "$CONFIG_PATH/matrix-appservice-irc/registration.yaml" -p 9999
