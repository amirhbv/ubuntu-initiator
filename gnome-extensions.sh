wget -O gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer"
chmod +x gnome-shell-extension-installer
mv gnome-shell-extension-installer /usr/bin/

sudo apt install -y gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0
gnome-shell-extension-installer --yes 120 # system-monitor

gnome-shell-extension-installer --yes 779  # Clipboard Indicator
gnome-shell-extension-installer --yes 1262 # Bing Wallpaper Changer
gnome-shell-extension-installer --yes 945  # CPU Power Manager
gnome-shell-extension-installer --yes 240  # Persian Calendar
gnome-shell-extension-installer --yes 1392 # you2ber


gnome-shell-extension-installer --restart-shell
