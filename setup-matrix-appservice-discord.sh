#!/bin/sh
ROOT_PATH=`pwd`
CONFIG_PATH="$ROOT_PATH/config"
cd software/matrix-appservice-discord
npm install
npm run build
node build/src/discordas.js -r -u "http://localhost:9005" -c $CONFIG_PATH/matrix-appservice-discord/config.yaml.real
cp $CONFIG_PATH/matrix-appservice-discord/* .
cp discord-registration.yaml $CONFIG_PATH/matrix-appservice-discord/registration.yaml
mv config.yaml.real config.yaml
