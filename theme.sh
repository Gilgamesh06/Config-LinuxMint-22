
# Mover cursor al sistema
sudo cp -rf Kitty/ /usr/share/icons/

# Mover temas de iconos del sistema
sudo cp -rf papirus-icons/ePapirus/ /usr/share/icons/
sudo cp -rf papirus-icons/ePapirus-Dark/ /usr/share/icons/
sudo cp -rf papirus-icons/Papirus/ /usr/share/icons/
sudo cp -rf papirus-icons/Papirus-Dark/ /usr/share/icons/
sudo cp -rf papirus-icons/Papirus-Light/ /usr/share/icons/

# Mover temas del sistema
sudo cp -rf Nordic-Polar/Nordic-Polar/ /usr/share/themes/
sudo cp -rf Nordic-Polar/Nordic-Polar-v40/ /usr/share/themes/


# Para Instalar apps
read -p "¿Desea instalar El tema de Ulauncher ? (s/n): " respuesta

if [[ "$respuesta" == "s" ]]; then
    
    # Crear el directorio para los temas de Ulauncher
    mkdir -p ~/.config/ulauncher/user-themes

    cd ~/.config/ulauncher/user-themes 
    
    # Clonar el repositorio de temas
    git clone https://github.com/LucianoBigliazzi/ulauncher-nord.git ~/.config/ulauncher/user-themes/ulauncher-nord
fi



