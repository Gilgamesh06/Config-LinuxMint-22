
apps-modified(){
    paquete=$1
    echo "¿Quieres instalar $paquete? (s/n)"
    read respuesta
    if [[ "$respuesta" == "s" || "$respuesta" == "S" ]]; then
        sudo apt install -y "$paquete"
        echo "$paquete ha sido instalada."
    else
        echo "$paquete no ha sido instalada."
    fi
}

apps-modified "gnome-tweaks"
apps-modified "gnome-shell-extension-manager"

# Mover cursor al sistema
sudo cp -rf Kitty/ /usr/share/icons/

# Mover temas de iconos del sistema
sudo cp -rf papirus-icons/ePapirus/ /usr/share/icons/
sudo cp -rf papirus-icons/ePapirus-Dark/ /usr/share/icons/
sudo cp -rf papirus-icons/Papirus/ /usr/share/icons/
sudo cp -rf papirus-icons/Papirus-Dark/ /usr/share/icons/
sudo cp -rf papirus-icons/Papirus-Light/ /usr/share/icons/

# Instalar thema orchis dark nord
echo "Clonando repo orchis theme"
git clone https://github.com/vinceliuice/Orchis-theme.git
echo "Dandole permissos al script"
cd Orchis-theme
sudo chmod +x install.sh
./install.sh -c dark -s compact -l --tweaks solid primary macos submenu nord --round 3px --shell 46
sudo flatpak override --filesystem=xdg-config/gtk-3.0 && sudo flatpak override --filesystem=xdg-config/gtk-4.0

# Para Instalar apps
read -p "¿Desea instalar El tema de Ulauncher ? (s/n): " respuesta

if [[ "$respuesta" == "s" ]]; then
    
    # Crear el directorio para los temas de Ulauncher
    mkdir -p ~/.config/ulauncher/user-themes

    cd ~/.config/ulauncher/user-themes 
    
    # Clonar el repositorio de temas
    git clone https://github.com/LucianoBigliazzi/ulauncher-nord.git ~/.config/ulauncher/user-themes/ulauncher-nord
fi



