#!/bin/bash

function googleChrome (){
    echo "---------------------------------"
    echo "Installing Google Chrome..."
    echo "---------------------------------"
    cd ./debPacks
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome-stable_current_amd64.deb
    cd ..
}

function termiusDeb (){
    echo "---------------------------------"
    echo "Installing Termius APP..."
    echo "---------------------------------"
    sudo apt install /home/$USER/Termius.deb
}

function dbeaverDeb (){
    echo "---------------------------------"
    echo "Installing DBeaver CE..."
    echo "---------------------------------"
    sudo add-apt-repository ppa:serge-rider/dbeaver-ce
    sudo apt-get update
    sudo apt-get install dbeaver-ce
}

function postmanDeb (){
    echo "---------------------------------"
    echo "Installing Postman..."
    echo "---------------------------------"    
}

function insomniaDeb (){
    echo "---------------------------------"
    echo "Installing Insomnia..."
    echo "---------------------------------"    
}

function webappsDeb (){
    echo "---------------------------------"
    echo "Installing Webapps..."
    echo "---------------------------------"    
}

function virtualboxDeb (){
    echo "---------------------------------"
    echo "Installing VirtualBox..."
    echo "---------------------------------"    
}

function zoomDeb (){
    echo "---------------------------------"
    echo "Installing Zoom Meeting..."
    echo "---------------------------------"    
}

function msteamsDeb (){
    echo "---------------------------------"
    echo "Installing Microsoft Teams..."
    echo "---------------------------------"    
}

function telegramDeb (){
    echo "---------------------------------"
    echo "Installing Telegram..."
    echo "---------------------------------"    
}

function discordDeb (){
    echo "---------------------------------"
    echo "Installing Discord..."
    echo "---------------------------------"    
}

function slackDeb (){
    echo "---------------------------------"
    echo "Installing Slack..."
    echo "---------------------------------"    
}


