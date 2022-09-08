#!/bin/bash

function extractZip (){
    echo "---------------------------------"
    echo "Extract ZIP SSH Files..."
    echo "---------------------------------"
    unzip ssh.zip -d ./sshFiles/

    echo "---------------------------------"
    echo "Extract ZIP SSH Files..."
    echo "---------------------------------"
    unzip wg.zip -d ./sshFiles/
}
