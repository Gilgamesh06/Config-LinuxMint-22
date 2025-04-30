#!/bin/bash

# Script para instalar varias aplicaciones Flatpak con confirmación del usuario

echo "Instalando flatpak"
sudo apt install -y flatpak 

echo "Instalando repositorio remoto"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

read -p "¿Desea instalar plugin de flatpak a gnome-software? (s/n): " respuesta

if [[ "$respuesta" == "s" ]]; then
    echo "Instalando plugin"
    sudo apt install -y gnome-software-plugin-flatpak

    # Resolver dependencias si es necesario
    sudo apt-get install -f

    echo "La instalación de Google Chrome se ha completado."
else
    echo "La instalación de Google Chrome ha sido cancelada."
fi

echo "Iniciando la instalación de aplicaciones Flatpak..."


# Función para instalar una aplicación con confirmación
instalar_aplicacion() {
  local nombre_app="$1"
  local comando_install="$2"
  local respuesta

  read -p "¿Desea instalar $nombre_app (s/n)? " respuesta
  respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]') # Convertir respuesta a minúsculas

  if [[ "$respuesta" == "s" ]]; then
    echo "Instalando $nombre_app..."
    $comando_install
    if [ $? -eq 0 ]; then
      echo "$nombre_app instalado correctamente."
    else
      echo "Error al instalar $nombre_app."
    fi
  else
    echo "Se ha omitido la instalación de $nombre_app."
  fi
  echo "" # Línea en blanco
}

# Instalar Zen Browser
instalar_aplicacion "Zen Browser" "flatpak install flathub app.zen_browser.zen -y"

# Instalar GIMP
instalar_aplicacion "GIMP" "flatpak install flathub org.gimp.GIMP -y"

# Instalar Foliate
instalar_aplicacion "Foliate" "flatpak install flathub com.github.johnfactotum.Foliate -y"

# Instalar Gitnuro
instalar_aplicacion "Gitnuro" "flatpak install flathub com.jetpackduba.Gitnuro -y"

# Instalar Telegram
instalar_aplicacion "Telegram" "flatpak install flathub org.telegram.desktop -y"

# Instalar Telegram
instalar_aplicacion "Planify" "flatpak install flathub io.github.alainm23.planify -y"

instalar_aplicacion "Bruno" "flatpak install flathub com.usebruno.Bruno -y"

echo "La instalación de las aplicaciones Flatpak ha finalizado."
