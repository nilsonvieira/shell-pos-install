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

# function termiusDeb (){
#     echo "---------------------------------"
#     echo "Installing Termius APP..."
#     echo "---------------------------------"
#     sudo apt install /home/$USER/Termius.deb
# }

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

    cd /home/$USER/Downloads
    wget https://zoom.us/client/5.11.10.4400/zoom_amd64.deb
    sudo apt install ./zoom_amd64.deb
    cd -
}

# function msteamsDeb (){
#     echo "---------------------------------"
#     echo "Installing Microsoft Teams..."
#     echo "---------------------------------"  

#     sudo apt install /home/$USER/Teams.deb  
# }

# function discordDeb (){
#     echo "---------------------------------"
#     echo "Installing Discord..."
#     echo "---------------------------------"  
#     sudo apt install /home/$USER/Discord.deb    
# }

function slackDeb (){
    echo "---------------------------------"
    echo "Installing Slack..."
    echo "---------------------------------"    
    cd /home/$USER/Downloads
    wget https://downloads.slack-edge.com/releases/linux/4.28.171/prod/x64/slack-desktop-4.28.171-amd64.deb
    sudo apt install ./slack-desktop-4.28.171-amd64.deb
    cd -   
}

function telegramDeb (){
    echo "---------------------------------"
    echo "Installing Telegram..."
    echo "---------------------------------"

    sudo add-apt-repository ppa:atareao/telegram
    sudo apt update && sudo apt install telegram

}

