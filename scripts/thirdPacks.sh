#!/bin/bash

# Script para instalação de pacotes de terceiros
source ./scripts/common.sh

# Instala pacotes de terceiros
install_third_party_packages() {
    echo "Instalando pacotes de terceiros..."

    install_package vagrant vault terraform
    # Adicionar outros pacotes de terceiros conforme necessário
}

add_repository deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main
install_third_party_packages
