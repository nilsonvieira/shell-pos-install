#!/bin/bash

function wireguardConfig () {
    
    echo "---------------------------------"
    echo "Copying WG Files..."
    echo "---------------------------------"
    
    sudo cp -rp ./wgFiles/* /etc/wireguard/
    
    echo "---------------------------------"
    echo "USE COMMAND FOR USE VPN: systemctl start wg-quick@wg0"
    echo "---------------------------------"

}