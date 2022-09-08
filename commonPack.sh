#!/bin/bash

function hashicorpPack (){
    echo "---------------------------------"
    echo "Install Hashicorp Packs"
    echo "---------------------------------"
    # Variable to install hashicorp packs
    p_hashicorp="vagrant terraform"

    wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
    sudo apt update && sudo apt install -y $p_hashicorp
}

function commomPack(){
    # Variable to install common packs
    p_list="git ansible vim curl wget remmina zenity flameshot alacarte htop nmap wireguard resolvconf"

    echo "---------------------------------"
    echo "Install Common Packs"
    echo "---------------------------------"
    sudo apt update && sudo apt install -y $p_list
}
