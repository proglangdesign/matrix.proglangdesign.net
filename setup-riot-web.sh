#!/bin/sh
ROOT_PATH=`pwd`
CONFIG_PATH="$ROOT_PATH/config"
cd software/riot-web
npm install
npm run build
sudo ln -s $ROOT_PATH/software/riot-web/webapp /opt/riot
sudo cp $CONFIG_PATH/riot-web/config.json /opt/riot
