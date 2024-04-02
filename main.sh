#!/bin/bash

source common.sh
source thirdPacks.sh

echo "---------------------------------"
echo "  Starting Initial Configs ..."
echo "---------------------------------"
updateSystem
echo "---------------------------------"
echo "  The System has need Restarted..."
echo "---------------------------------"
while true; do
    read -r -p "Do you wish to reboot the system? (Y/N): " answer
    case $answer in
        [Yy]* ) 
            reboot; break
            ;;
        [Nn]* ) 
            hashicorp ; browser ; essetial ; databases; communicate ; music
            ;;
        * ) 
            echo "Please answer Y or N."
            ;;
    esac
done