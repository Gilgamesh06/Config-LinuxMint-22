echo "Configuracion de Linux mint"


# Dar permisos de ejecucion a los demas scripts
sudo chmod +x cli-tools.sh
sudo chmod +x apps.sh
sudo chmod +x apps-flatpak.sh
sudo chmod +x theme.sh
sudo chmod +x remove.sh

# Preguntar al usuario si desea instalar aplicaciones flatpak
read -p "¿Desea instalar apps flatpak ? (s/n): " respuesta_flatpak

if [[ "$respuesta_flatpak" == "s" ]]; then
    ./apps-flatpak.sh
else
    echo "La instalación de herramientas básicas ha sido cancelada."
fi


# Preguntar al usuario si desea instalar herramientas básicas
read -p "¿Desea instalar herramientas básicas ? (s/n): " respuesta_basicas

if [[ "$respuesta_basicas" == "s" ]]; then
    sudo apt update
    ./cli-tools.sh
else
    echo "La instalación de herramientas básicas ha sido cancelada."
fi

# Para Instalar apps
read -p "¿Desea instalar apps ? (s/n): " respuesta_apps

if [[ "$respuesta_apps" == "s" ]]; then
    sudo apt update
    ./apps.sh
else
    echo "La instalación de apps ha sido cancelada."
fi


# Para eliminar aplicaciones del sistema
read -p "¿Desea eliminar  aplicaciones del sistema ? (s/n): " respuesta_eliminar

if [[ "$respuesta_eliminar" == "s" ]]; then
    ./remove.sh
else
    echo "La eliminacion de aplicaciones ha sido cancelada."
fi


# Para Instalar Thema
read -p "¿Desea instalar Configuracion de Theme ? (s/n): " respuesta_theme

if [[ "$respuesta_theme" == "s" ]]; then
    ./theme.sh
else
    echo "La instalación del tema ha sido cancelada."
fi

echo "Script finalizado"
