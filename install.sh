#!/bin/bash

source extractZip.sh
source updateSystem.sh
source commonPack.sh
source sshConfig.sh
source wireguardConfig.sh
source debpackConfig.sh

echo "---------------------------------"
echo "Starting init config..."
echo "---------------------------------"

mkdir -p ./sshFiles/
mkdir -p ./wgFiles/

extractZip
updateSystem
commomPack
hashicorpPack
sshConfig
wireguardConfig

googleChrome
# termiusDeb
dbeaverDeb
postmanDeb
insomniaDeb
webappsDeb
virtualboxDeb
zoomDeb
# msteamsDeb
telegramDeb
# discordDeb
slackDeb

updateSystem