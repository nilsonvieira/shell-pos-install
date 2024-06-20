#!/bin/bash

# Script para configuração do sistema

source ./scripts/common.sh

# Configuração específica do sistema
configure_system() {
    # Exemplo de configuração do sistema
    echo "Configurando o sistema..."
    # Adicionar configurações específicas aqui
    git config --global user.name "Nilson R S Vieira"
    git config --global user.email "nilsonrsvieira@gmail.com"
}

configure_system
