#!/bin/bash

function gitConfig (){
    git config --global user.name "Nilson R S Vieira"
    git config --global user.email "nilsonrsvieira@gmail.com"
}


function sshConfig () {
    echo "---------------------------------"
    echo "Creating Directory in HOME and Copying SSH Files..."
    echo "---------------------------------"

    cd /home/$USER/Downloads
    unzip ssh.zip
    mv .ssh /home/$USER/
    cd -
    
    echo "---------------------------------"
    echo "Applying Permissions in Folder .ssh and SSH Files..."
    echo "---------------------------------"
    
    chmod 755 /home/$USER/.ssh
    chmod 600 /home/$USER/.ssh/*
    chown $USER:$USER /home/$USER/.ssh
    chown $USER:$USER /home/$USER/.ssh/*
    
}

function wgConfig () {
    
    echo "---------------------------------"
    echo "Copying WG Files..."
    echo "---------------------------------"
    
    cd /home/$USER/Downloads
    sudo unzip wireguard.zip 
    sudo mv wg* /etc/wireguard/
    cd -
    
    echo "---------------------------------"
    echo "USE COMMAND FOR USE VPN: systemctl start wg-quick@wg0"
    echo "---------------------------------"

}

gitConfig
sshConfig
wgConfig
