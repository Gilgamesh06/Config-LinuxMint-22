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
eliminar_paquete "firefox"
eliminar_paquete "drawing"
eliminar_paquete "hypnotix"
eliminar_paquete "webapp-manager"


echo "Proceso completado."
