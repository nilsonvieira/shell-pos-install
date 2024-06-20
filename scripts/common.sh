#!/bin/bash

# Funções comuns para instalação de pacotes e configuração do sistema

# Verifica se o script está sendo executado como root
check_root() {
    if [ "$EUID" -ne 0 ]; then
        echo "Por favor, execute como root"
        exit 1
    fi
}

# Instala um pacote usando o gerenciador de pacotes apropriado
install_package() {
    local package=$1
    if command -v apt-get &> /dev/null; then
        apt-get update
        apt-get install -y "$package"
    elif command -v yum &> /dev/null; then
        yum install -y "$package"
    else
        echo "Gerenciador de pacotes não suportado."
        exit 1
    fi
}

# Atualiza todos os pacotes do sistema
update_system() {
    if command -v apt-get &> /dev/null; then
        apt-get update
        apt-get upgrade -y
    elif command -v yum &> /dev/null; then
        yum update -y
    else
        echo "Gerenciador de pacotes não suportado."
        exit 1
    fi
}

# Adiciona um repositório
add_repository() {
    local repo=$1
    if command -v add-apt-repository &> /dev/null; then
        add-apt-repository -y "$repo"
        apt-get update
    elif command -v yum-config-manager &> /dev/null; then
        yum-config-manager --add-repo "$repo"
    else
        echo "Comando de repositório não suportado."
        exit 1
    fi
}

# Função de exemplo para instalar pacotes comuns
install_common_packages() {
    packages=(git ansible vim curl wget remmina* zenity flameshot alacarte htop btop resolvconf software-properties-common apt-transport-https wireguard openssh-server)
    for package in "${packages[@]}"; do
        install_package "$package"
    done
}

# Executa a função de verificação de root no início de cada script
check_root
