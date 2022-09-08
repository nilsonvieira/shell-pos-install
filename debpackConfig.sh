#!/bin/bash

function googleChrome (){
    echo "---------------------------------"
    echo "Installing Google Chrome..."
    echo "---------------------------------"
    cd /home/$USER/Downloads
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome-stable_current_amd64.deb
    cd -
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

    echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
    sudo apt-get update
    sudo apt-get install insomnia
}

function webappsDeb (){
    echo "---------------------------------"
    echo "Installing Webapps..."
    echo "---------------------------------" 
    cd /home/$USER/Downloads
    wget http://packages.linuxmint.com/pool/main/w/webapp-manager/webapp-manager_1.2.5_all.deb  
    sudo apt install ./webapp-manager_1.2.5_all.deb 
    cd -
}

function virtualboxDeb (){
    echo "---------------------------------"
    echo "Installing VirtualBox..."
    echo "---------------------------------"    

    deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian jammy contrib
    wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
    sudo apt-get update && sudo apt-get install virtualbox-6.1
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


