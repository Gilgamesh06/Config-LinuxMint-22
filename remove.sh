#!/bin/bash

# Función para eliminar un paquete
eliminar_paquete() {
    paquete=$1
    echo "¿Quieres eliminar $paquete? (s/n)"
    read respuesta
    if [[ "$respuesta" == "s" || "$respuesta" == "S" ]]; then
        sudo apt remove -y "$paquete"
        echo "$paquete ha sido eliminado."
    else
        echo "$paquete no ha sido eliminado."
    fi
}

# Preguntar por cada paquete
eliminar_paquete "remmina"
eliminar_paquete "shotwell"
eliminar_paquete "gnome-snapshot"
eliminar_paquete "simple-scan"
eliminar_paquete "update-manager"
eliminar_paquete "software-properties-gtk"
eliminar_paquete "ibus-table"

eliminar_snap(){
    echo "¿Quieres eliminar snap? (s/n)"
    read respuesta
    if [[ "$respuesta" == "s" || "$respuesta" == "S" ]]; then
        sudo snap remove thunderbird 
        sudo snap remove firefox 
        sudo snap remove snap-store
        sudo snap remove gnome-42-2204
        sudo snap remove gtk-common-themes
        sudo snap remove firmware-updater
        sudo snap remove snapd-desktop-integration
        sudo snap remove bare core20
        sudo snap remove snapd snapd
        sudo rm /etc/apt/preferences.d/ubuntu-pro-esm-apps
        sudo rm /etc/apt/preferences.d/ubuntu-pro-esm-infra
        sudo cp nosnap.pref etc/apt/preferences.d/
        sudo apt remove --autoremove snapd
        echo "snap ha sido eliminado."
    else
        echo "no se va a eliminar snap."
    fi
}

eliminar_snap


echo "Proceso completado."
