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

function devops (){
    ## POSTMAN
    echo "---------------------------------"
    echo "Installing Postman..."
    echo "---------------------------------"
    cd /home/$USER/Downloads
    wget https://dl.pstmn.io/download/latest/linux_64 -O postman.tar.gz
    sudo tar -xvf  postman.tar.gz -C /opt/
    cd -
    sudo install -t ~/.local/share/applications/ ./files/postman.desktop

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
    echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian jammy contrib' | sudo tee /etc/apt/sources.list.d/vbox.list
    wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
    sudo apt-get update && sudo apt-get install virtualbox-6.1 -y

    ## LENS
    echo "---------------------------------"
    echo "Installing Lens..."
    echo "---------------------------------"
    curl -fsSL https://downloads.k8slens.dev/keys/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/lens-archive-keyring.gpg > /dev/null
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/lens-archive-keyring.gpg] https://downloads.k8slens.dev/apt/debian stable main" | sudo tee /etc/apt/sources.list.d/lens.list > /dev/null
    sudo apt update && sudo apt install lens -y

    ## KUBECTL
    echo "---------------------------------"
    echo "Installing Kubectl..."
    echo "---------------------------------"
    cd /home/$USER/Downloads
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    chmod +x kubectl
    mkdir -p ~/.local/bin
    mv ./kubectl ~/.local/bin/kubectl
    cd -

    ## DOCKER
    echo "---------------------------------"
    echo "Installing Docker..."
    echo "---------------------------------"
    for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
    sudo groupadd docker
    sudo usermod -aG docker $USER
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
    wget https://zoom.us/client/latest/zoom_amd64.deb
    sudo apt install ./zoom_amd64.deb -y
    cd -

    ## TELEGRAM
    echo "---------------------------------"
    echo "Installing Telegram..."
    echo "---------------------------------"
    sudo add-apt-repository ppa:atareao/telegram
    sudo apt update && sudo apt install telegram -y
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


    echo "---------------------------------"
    echo " Installing Golang..."
    echo "---------------------------------"
    cd /home/$USER/Downloads
    wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz
    sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz
    export PATH=$PATH:/usr/local/go/bin
    sudo echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.profile
    cd -
}
