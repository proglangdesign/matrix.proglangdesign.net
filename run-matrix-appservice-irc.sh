#!/bin/sh
ROOT_PATH=`pwd`
CONFIG_PATH="$ROOT_PATH/config"
cd software/matrix-appservice-irc
# sudo is necessary to bind to the ident port (113).
# obviously this is a terrible idea,
# but I don't feel like figuring out a workaround right now.
sudo node app.js -c $CONFIG_PATH/matrix-appservice-irc/config.yaml.real -f "$CONFIG_PATH/matrix-appservice-irc/registration.yaml" -p 9999
