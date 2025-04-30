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



echo "Script finalizado"
