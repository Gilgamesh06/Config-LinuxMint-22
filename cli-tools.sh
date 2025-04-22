#!/bin/bash

# Para instalar curl
read -p "¿Desea instalar Curl? (s/n): " respuesta_curl

if [[ "$respuesta_curl" == "s" ]]; then
    
    # Instalar curl
    sudo apt install -y curl 
    echo "La instalación de curl se ha completado."
else
    echo "La instalación de curl ha sido cancelada."
fi

# Para instalar wget
read -p "¿Desea instalar Wget? (s/n): " respuesta_wget

if [[ "$respuesta_wget" == "s" ]]; then
    
    # Instalar wget
    sudo apt install -y wget 
    echo "La instalación de wget se ha completado."
else
    echo "La instalación de wget ha sido cancelada."
fi

# Para instalar htop
read -p "¿Desea instalar htop? (s/n): " respuesta_htop

if [[ "$respuesta_htop" == "s" ]]; then
    
    # Instalar htop
    sudo apt install -y htop 
    echo "La instalación de htop se ha completado."
else
    echo "La instalación de htop ha sido cancelada."
fi


# Para instalar nala
read -p "¿Desea instalar nala? (s/n): " respuesta_nala

if [[ "$respuesta_nala" == "s" ]]; then
    
    # Instalar nala
    sudo apt install -y nala 
    echo "La instalación de nala se ha completado."
else
    echo "La instalación de nala ha sido cancelada."
fi
