#!/bin/bash

# Preguntar al usuario si desea instalar el paquete bruno
read -p "¿Desea instalar el paquete 'bruno'? (s/n): " respuesta_bruno

if [[ "$respuesta_bruno" == "s" ]]; then
    echo "Agregando el keyring y el repositorio para 'bruno'..."

    # Crear el directorio para el keyring
    sudo mkdir -p /etc/apt/keyrings 

    # Agregar la clave GPG
    sudo gpg --no-default-keyring --keyring /etc/apt/keyrings/bruno.gpg --keyserver keyserver.ubuntu.com --recv-keys 9FA6017ECABE0266 

    # Agregar el repositorio
    echo "deb [signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" | sudo tee /etc/apt/sources.list.d/bruno.list 

    # Actualizar la lista de paquetes
    sudo apt update 

    # Instalar el paquete bruno
    sudo apt install -y bruno 

    echo "La instalación de 'bruno' se ha completado."
else
    echo "La instalación de 'bruno' ha sido cancelada."
fi

# Preguntar al usuario si desea instalar Google Chrome
read -p "¿Desea instalar Google Chrome? (s/n): " respuesta_chrome

if [[ "$respuesta_chrome" == "s" ]]; then
    echo "Descargando e instalando Google Chrome..."

    # Descargar el paquete .deb de Google Chrome
    curl -LO https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

    # Instalar Google Chrome
    sudo dpkg -i google-chrome-stable_current_amd64.deb

    # Resolver dependencias si es necesario
    sudo apt-get install -f

    echo "La instalación de Google Chrome se ha completado."
else
    echo "La instalación de Google Chrome ha sido cancelada."
fi

# Preguntar al usuario si desea instalar Visual Studio Code
read -p "¿Desea instalar Visual Studio Code? (s/n): " respuesta_vscode

if [[ "$respuesta_vscode" == "s" ]]; then
    echo "Descargando e instalando Visual Studio Code..."

    # Descargar el paquete .deb de Visual Studio Code
    curl -LO https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64

    # Instalar Visual Studio Code
    sudo dpkg -i code_*.deb

    # Resolver dependencias si es necesario
    sudo apt-get install -f

    echo "La instalación de Visual Studio Code se ha completado."
else
    echo "La instalación de Visual Studio Code ha sido cancelada."
fi

# Preguntar al usuario si desea instalar DBeaver
read -p "¿Desea instalar DBeaver? (s/n): " respuesta_dbeaver

if [[ "$respuesta_dbeaver" == "s" ]]; then
    echo "Descargando e instalando DBeaver..."

    # Descargar el paquete .deb de DBeaver
    curl -LO https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

    # Instalar DBeaver
    sudo dpkg -i dbeaver-ce_latest_amd64.deb

    # Resolver dependencias si es necesario
    sudo apt-get install -f

    echo "La instalación de DBeaver se ha completado."
else
    echo "La instalación de DBeaver ha sido cancelada."
fi

# Preguntar al usuario si desea instalar Zed
read -p "¿Desea instalar Zed? (s/n): " respuesta_zed

if [[ "$respuesta_zed" == "s" ]]; then
    echo "Instalando Zed..."

    # Ejecutar el script de instalación de Zed
    curl -f https://zed.dev/install.sh
else
    echo "La instalación de zed ha sido cancelada."
fi

# Preguntar al usuario si desea instalar Zed
read -p "¿Desea instalar Zeal? (s/n): " respuesta_zeal

if [[ "$respuesta_zeal" == "s" ]]; then
    echo "Instalando Zeal..."

    # Ejecutar el script de instalación de Zed
    sudo apt install -y zeal
else
    echo "La instalación de zeal ha sido cancelada."
fi

# Preguntar al usuario si desea instalar sequeler
read -p "¿Desea instalar sequeler? (s/n): " respuesta_sequeler

if [[ "$respuesta_sequeler" == "s" ]]; then
    echo "Instalando sequeler..."

    # Ejecutar el script de instalación de Zed
    sudo apt install -y sequeler
else
    echo "La instalación de sequeler ha sido cancelada."
fi

# Preguntar al usuario si desea instalar flastfetch
read -p "¿Desea instalar flastfetch? (s/n): " respuesta_flastfetch

if [[ "$respuesta_flastfetch" == "s" ]]; then
    echo "Instalando flastfetch..."

    # Descargar el paquete .deb de fastfetch
    curl -LO https://github.com/fastfetch-cli/fastfetch-cli/fastfetch/releases/download/2.41.0/fastfetch-linux-amd64.deb

    # Instalar fastfetch
    sudo dpkg -i fastfetch-linux-amd64.deb

    # Resolver dependencias si es necesario
    sudo apt-get install -f
else
    echo "La instalación de flastfetch ha sido cancelada."
fi

# Preguntar al usuario si desea instalar flastfetch
read -p "¿Desea instalar mongodb? (s/n): " respuesta_mongodb

if [[ "$respuesta_mongodb" == "s" ]]; then
    echo "Instalando mongodb..."

    # Ejecutar el script de instalación de mongodb
    wget https://downloads.mongodb.com/compass/mongodb-compass_1.45.4_amd64.deb
    sudo apt install ./mongodb-compass_1.45.4_amd64.deb

    # Resolver dependencias si es necesario
    sudo apt-get install -f
else
    echo "La instalación de mongodb ha sido cancelada."
fi


# Preguntar al usuario si desea instalar flastfetch
read -p "¿Desea instalar postgreSQL? (s/n): " respuesta_postgresql

if [[ "$respuesta_postgresql" == "s" ]]; then
    echo "Instalando postgreSQL..."

    # Ejecutar el script de instalación de mongodb
    sudo apt update
    sudo apt install -y wget ca-certificates gnupg
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    echo "deb [arch=$(dpkg --print-architecture)] http://apt.postgresql.org/pub/repos/apt jammy-pgdg main" | sudo tee /etc/apt/sources.list.d/postgresql.list
    sudo apt update
    sudo apt install postgresql postgresql-contrib
else
    echo "La instalación de postgresql ha sido cancelada."
fi

# Preguntar al usuario si desea instalar Draw.io
read -p "¿Desea instalar Draw.io? (s/n): " respuesta_drawio

if [[ "$respuesta_drawio" == "s" ]]; then
    echo "Descargando e instalando Draw.io..."

    # Descargar el paquete .deb de Draw.io
    curl -LO https://github.com/jgraph/drawio-desktop/releases/download/v26.2.2/drawio-amd64-26.2.2.deb

    # Instalar Draw.io
    sudo dpkg -i drawio-amd64-26.2.2.deb

    # Resolver dependencias si es necesario
    sudo apt-get install -f

    echo "La instalación de Draw.io se ha completado."
else
    echo "La instalación de Draw.io ha sido cancelada."
fi

# Preguntar al usuario si desea instalar Ulauncher
read -p "¿Desea instalar Ulauncher? (s/n): " respuesta_ulauncher

if [[ "$respuesta_ulauncher" == "s" ]]; then
    echo "Descargando e instalando Ulauncher..."

    # Descargar el paquete .deb de Ulauncher
    curl -LO https://github.com/Ulauncher/Ulauncher/releases/download/5.15.7/ulauncher_5.15.7_all.deb

    # Instalar Ulauncher
    sudo dpkg -i ulauncher_5.15.7_all.deb

    # Resolver dependencias si es necesario
    sudo apt-get install -f

    echo "La instalación de Ulauncher se ha completado."
else
    echo "La instalación de Ulauncher ha sido cancelada."
fi

# Preguntar al usuario si desea instalar IntelliJ IDEA
read -p "¿Desea instalar IntelliJ IDEA? (s/n): " respuesta_intellij

if [[ "$respuesta_intellij" == "s" ]]; then
    echo "Descargando e instalando IntelliJ IDEA..."

    # Descargar el archivo comprimido de IntelliJ IDEA
    curl -LO https://www.jetbrains.com/idea/download/download-thanks.html?platform=linux

    # Descomprimir el archivo
    tar -xzf ideaIC*

    # Cambiar el nombre del directorio a 'idea'
    mv idea-IC-* idea

    # Mover el directorio a /opt
    sudo mv idea /opt/
    sudo mv idea.desktop ~/usr/share/applications

    echo "La instalación de IntelliJ IDEA se ha completado."
else
    echo "La instalación de IntelliJ IDEA ha sido cancelada."
fi

# Preguntar al usuario si desea instalar Warp
read -p "¿Desea instalar Warp? (s/n): " respuesta_warp

if [[ "$respuesta_warp" == "s" ]]; then
    echo "Descargando e instalando Warp..."

    # Descargar el paquete .deb de Warp
    curl -LO https://app.warp.dev/get_warp?package=deb -o warp.deb

    # Instalar Warp
    sudo dpkg -i warp.deb

    # Resolver dependencias si es necesario
    sudo apt-get install -f

    echo "La instalación de Warp se ha completado."
else
    echo "La instalación de Warp ha sido cancelada."
fi

# Preguntar al usuario si desea instalar Dropbox
read -p "¿Desea instalar Dropbox? (s/n): " respuesta_dropbox

if [[ "$respuesta_dropbox" == "s" ]]; then
    echo "Descargando e instalando Dropbox..."

    # Descargar el paquete .deb de Dropbox
    curl -LO https://www.dropbox.com/download?plat=lnx.x86_64 -o dropbox.deb

    # Instalar Dropbox
    sudo dpkg -i dropbox.deb

    # Resolver dependencias si es necesario
    sudo apt-get install -f

    echo "La instalación de Dropbox se ha completado."
else
    echo "La instalación de Dropbox ha sido cancelada."
fi

# Instalar Docker
echo "¿Quieres instalar Docker? (s/n)"
read respuesta_docker
if [[ "$respuesta_docker" == "s" || "$respuesta_docker" == "S" ]]; then
    sudo apt install -y docker.io
    echo "Docker ha sido instalado."
else
    echo "Docker no ha sido instalado."
fi

# Instalar Docker Compose
echo "¿Quieres instalar Docker Compose? (s/n)"
read respuesta_compose
if [[ "$respuesta_compose" == "s" || "$respuesta_compose" == "S" ]]; then
    sudo apt install -y docker-compose
    echo "Docker Compose ha sido instalado."
else
    echo "Docker Compose no ha sido instalado."
fi


# Instalar Docker Compose
echo "¿Quieres instalar Docker Compose? (s/n)"
read respuesta_kube
if [[ "$respuesta_kube" == "s" || "$respuesta_kube" == "S" ]]; then
    # Actualizar la lista de paquetes
    echo "Actualizando la lista de paquetes..."
    sudo apt update

    # Instalar kubectl
    echo "Instalando kubectl..."
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    echo "Verificando la integridad de kubectl..."
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
    echo "Instalando kubectl..."
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    rm kubectl kubectl.sha256
    echo "kubectl ha sido instalado."

    # Instalar Minikube
    echo "Instalando Minikube..."
    curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    rm minikube-linux-amd64
    echo "Minikube ha sido instalado."
fi


# Instalar Plank
echo "¿Quieres instalar Plank? (s/n)"
read respuesta
if [[ "$respuesta" == "s" || "$respuesta" == "S" ]]; then
    sudo apt install -y plank
    echo "Plank ha sido instalado."
else
    echo "Plank no ha sido instalado."
fi


#!/bin/bash

# Actualizar la lista de paquetes
echo "Actualizando la lista de paquetes..."
sudo apt update

# Instalar R
echo "Instalando R..."
sudo apt install -y r-base
echo "R ha sido instalado."

# Descargar e instalar RStudio
echo "Descargando RStudio..."
curl -LO https://download1.rstudio.org/electron/jammy/amd64/rstudio-2024.12.1-563-amd64.deb

# Instalar RStudio
echo "Instalando RStudio..."
sudo apt install -y ./rstudio-2024.12.1-563-amd64.deb

echo "RStudio ha sido instalado."

echo "Proceso completado."
