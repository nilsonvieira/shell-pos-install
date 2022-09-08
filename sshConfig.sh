#!/bin/bash


function sshConfig () {
    echo "---------------------------------"
    echo "Creating Directory in HOME and Copying SSH Files..."
    echo "---------------------------------"
    
    mkdir -p /home/$USER/.ssh/
    cp -rp ./sshFiles/* /home/$USER/.ssh/
    
    echo "---------------------------------"
    echo "Applying Permissions in Folder .ssh and SSH Files..."
    echo "---------------------------------"
    
    chmod 755 /home/$USER/.ssh
    chmod 600 /home/$USER/.ssh/*
    chown $USER:$USER /home/$USER/.ssh/
    chown $USER:$USER /home/$USER/.ssh/*

}