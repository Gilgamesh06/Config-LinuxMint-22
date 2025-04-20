#!/bin/bash

# Para instalar curl
read -p "¿Desea instalar Curl? (s/n): " respuesta_curl

if [[ "$respuesta_git" == "s" ]]; then
    
    # Instalar git, htop y curl
    sudo apt install -y curl 
    echo "La instalación de curl se ha completado."
else
    echo "La instalación de curl ha sido cancelada."
if

# Para instalar wget
read -p "¿Desea instalar Wget? (s/n): " respuesta_wget

if [[ "$respuesta_wget" == "s" ]]; then
    
    # Instalar wget
    sudo apt install -y wget 
    echo "La instalación de wget se ha completado."
else
    echo "La instalación de wget ha sido cancelada."
if

# Para instalar htop
read -p "¿Desea instalar htop? (s/n): " respuesta_htop

if [[ "$respuesta_htop" == "s" ]]; then
    
    # Instalar htop
    sudo apt install -y htop 
    echo "La instalación de htop se ha completado."
else
    echo "La instalación de htop ha sido cancelada."
if


# Para instalar nala
read -p "¿Desea instalar nala? (s/n): " respuesta_nala

if [[ "$respuesta_nala" == "s" ]]; then
    
    # Instalar nala
    sudo apt install -y nala 
    echo "La instalación de nala se ha completado."
else
    echo "La instalación de nala ha sido cancelada."
if

# Preguntar al usuario si desea instalar Zsh y Oh My Zsh
read -p "¿Desea instalar Zsh y Oh My Zsh? (s/n): " respuesta_zsh

if [[ "$respuesta_zsh" == "s" ]]; then
    echo "Instalando Zsh..."

    # Instalar Zsh
    sudo apt update
    sudo apt install -y zsh

    # Cambiar el shell predeterminado a Zsh
    chsh -s $(which zsh)

    echo "Zsh se ha instalado y se ha configurado como el shell predeterminado."

    echo "Instalando Oh My Zsh..."

    # Instalar Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    echo "La instalación de Oh My Zsh se ha completado."
else
    echo "La instalación de Zsh y Oh My Zsh ha sido cancelada."
fi