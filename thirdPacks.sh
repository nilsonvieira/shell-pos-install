#!/bin/bash

function hashicorp (){
    echo "---------------------------------"
    echo " Install Hashicorp Packs..."
    echo "---------------------------------"
    p_hashicorp="vagrant terraform vault"

    wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
    sleep 10
    sudo apt update && sudo apt install -y $p_hashicorp
}

function browser (){
    ## GOOGLE CHROME
    echo "---------------------------------"
    echo "Installing Google Chrome..."
    echo "---------------------------------"
    cd /home/$USER/Downloads
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome-stable_current_amd64.deb -y
    cd -
    ## MICROSOFT EDGE
    echo "---------------------------------"
    echo " Installing Microsoft Edge..."
    echo "---------------------------------"
    curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/microsoft-edge.gpg > /dev/null
    echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main' | sudo tee /etc/apt/sources.list.d/microsoft-edge.list
    sudo apt update && sudo apt install microsoft-edge-stable -y
}

function essetial (){
    ## POSTMAN
    echo "---------------------------------"
    echo "Installing Postman..."
    echo "---------------------------------"

    ## INSOMNIA
    echo "---------------------------------"
    echo "Installing Insomnia..."
    echo "---------------------------------"

    echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
    sudo apt-get update
    sudo apt-get install insomnia -y    

    echo "---------------------------------"
    echo "Installing VirtualBox..."
    echo "---------------------------------"    

    deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian jammy contrib
    wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
    sudo apt-get update && sudo apt-get install virtualbox-6.1 -y
}

function databases (){
    ## DBEAVER
    echo "---------------------------------"
    echo "Installing DBeaver CE..."
    echo "---------------------------------"
    sudo add-apt-repository ppa:serge-rider/dbeaver-ce
    sudo apt-get update
    sudo apt-get install dbeaver-ce -y
}

function communicate (){
    ## ZOOM
    echo "---------------------------------"
    echo "Installing Zoom Meeting..."
    echo "---------------------------------"    

    cd /home/$USER/Downloads
    wget https://zoom.us/client/5.11.10.4400/zoom_amd64.deb
    sudo apt install ./zoom_amd64.deb -y
    cd -

    ## DISCORD
    echo "---------------------------------"
    echo "Installing Discord..."
    echo "---------------------------------"  

    ## SLACK
    echo "---------------------------------"
    echo "Installing Slack..."
    echo "---------------------------------"    
    cd /home/$USER/Downloads
    wget https://downloads.slack-edge.com/releases/linux/4.28.171/prod/x64/slack-desktop-4.28.171-amd64.deb
    sudo apt install ./slack-desktop-4.28.171-amd64.deb -y
    cd -   

    ## TELEGRAM
    echo "---------------------------------"
    echo "Installing Telegram..."
    echo "---------------------------------"

    sudo add-apt-repository ppa:atareao/telegram
    sudo apt update && sudo apt install telegram -y
}

function music (){
    echo "---------------------------------"
    echo "Installing Spotify..."
    echo "---------------------------------"

    curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

    sudo apt-get update && sudo apt-get install spotify-client
}

function code (){
    echo "---------------------------------"
    echo " Installing VSCode..."
    echo "---------------------------------"
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo apt install apt-transport-https
    sudo apt update && sudo apt install code -y
}