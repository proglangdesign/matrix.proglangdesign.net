#!/bin/sh
ROOT_PATH=`pwd`
sudo apt-get update
sudo add-apt-repository https://matrix.org/packages/debian/
wget -qO - https://matrix.org/packages/debian/repo-key.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install matrix-synapse
sudo systemctl enable matrix-synapse
sudo rm -r /etc/matrix-synapse
sudo cp -r $ROOT_PATH/config/matrix-synapse /etc
sudo mv /etc/matrix-synapse/homeserver.yaml.real /etc/matrix-synapse/homeserver.yaml
sudo systemctl start matrix-synapse
