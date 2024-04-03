#!/bin/bash

function updateSystem (){
    echo "---------------------------------"
    echo "Updating Operational Systems..."
    echo "---------------------------------"
    sudo apt update && sudo apt upgrade -y
}

function commonPacks (){
    p_list="git ansible vim curl wget remmina* zenity flameshot alacarte htop btop resolvconf software-properties-common apt-transport-https wireguard openssh-server"
    
    echo "---------------------------------"
    echo " Installing Common Packages...   "
    echo "---------------------------------"
    sudo apt update && sudo apt install -y $p_list
}