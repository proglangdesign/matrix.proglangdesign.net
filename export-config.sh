#!/bin/sh
ROOT_PATH=`pwd`
SECRETS_PATH="$ROOT_PATH/secrets"
SOFTWARE_PATH="$ROOT_PATH/software"
DATA_PATH="$ROOT_PATH/data"
CONFIG_PATH="$ROOT_PATH/config"
DISCORD_BOT_TOKEN=`cat $SECRETS_PATH/discordBotToken`
IRC_BOT_PASSWORD=`cat $SECRETS_PATH/ircBotPassword`
PASSWORD_PEPPER=`cat $SECRETS_PATH/passwordPepper`
REGISTRATION_SHARED_SECRET=`cat $SECRETS_PATH/registrationSharedSecret`
sed "s/\\\\discordBotToken/$DISCORD_BOT_TOKEN/g; s@\\\\data@$DATA_PATH@g" $CONFIG_PATH/matrix-appservice-discord/config.yaml > $CONFIG_PATH/matrix-appservice-discord/config.yaml.real
sed "s@\\\\data@$DATA_PATH@g; s/\\\\ircBotPassword/$IRC_BOT_PASSWORD/g; s@\\\\secrets@$SECRETS_PATH@g" $CONFIG_PATH/matrix-appservice-irc/config.yaml > $CONFIG_PATH/matrix-appservice-irc/config.yaml.real
sed "s@\\\\data@$DATA_PATH@g; s@\\\\secrets@$SECRETS_PATH@g; s@\\\\software@$SOFTWARE_PATH@g; s@\\\\config@$CONFIG_PATH@g; s/\\\\registrationSharedSecret/$REGISTRATION_SHARED_SECRET/g; s/\\\\passwordPepper/$PASSWORD_PEPPER/g" $CONFIG_PATH/matrix-synapse/homeserver.yaml > $CONFIG_PATH/matrix-synapse/homeserver.yaml.real
cp $CONFIG_PATH/matrix-appservice-discord/config.yaml.real $SOFTWARE_PATH/matrix-appservice-discord/config.yaml
