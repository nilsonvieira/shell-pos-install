#!/bin/bash

function updateSystem (){
    echo "---------------------------------"
    echo "Updating Operational System..."
    echo "---------------------------------"
    sudo apt update && sudo apt upgrade -y
}