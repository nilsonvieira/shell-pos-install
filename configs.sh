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
    mkdir -p /home/$USER/.ssh/
    tar -xvf sshfiles.tar.gz -C /home/$USER/.ssh/
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
    sudo tar -xvf wireguard.tar.gz -C /etc/wireguard/
    cd -
    
    echo "---------------------------------"
    echo "USE COMMAND FOR USE VPN: systemctl start wg-quick@wg0"
    echo "---------------------------------"

}