#!/bin/bash

# Script principal para instalação e configuração pós-instalação

source ./scripts/common.sh
source ./scripts/configs.sh
source ./scripts/thirdPacks.sh

# Função principal
main() {
    echo "Iniciando instalação e configuração..."
    update_system
    install_common_packages
    configure_system
    install_third_party_packages
    echo "Instalação e configuração concluídas!"
}

main
