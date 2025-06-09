#!/bin/bash/

sudo apt update && sudo apt upgrade -y

sudo apt install yaru-theme-gtk yaru-theme-icon yaru-theme-sound yaru-theme-gnome-shell -y

xfconf-query -c xsettings -p /Net/ThemeName -s "Yaru" -t string --create


xfconf-query -c xsettings -p /Net/IconThemeName -s "Yaru" -t string --create


xfconf-query -c xsettings -p /GTK/CursorThemeName -s "Yaru" -t string --create

xfconf-query -c xfwm4 -p /general/theme -s "Yaru" -t string --create

sudo apt install plank -y

mkdir -p ~/.config/autostart



cat <<EOF > ~/.config/autostart/plank.desktop

[Desktop Entry]

Type=Application

Exec=plank

Hidden=false

X-GNOME-Autostart-enabled=true

Name=Plank

Comment=Dock

EOF


# setting up wallpaper

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorrdp0/workspace0/last-image --create -t string -s "$(pwd)/xfce-rabbit.png"

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorrdp0/workspace1/last-image --create -t string -s "$(pwd)/xfce-rabbit.png"

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorrdp0/workspace2/last-image --create -t string -s "$(pwd)/xfce-rabbit.png"

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorrdp0/workspace3/last-image --create -t string -s "$(pwd)/xfce-rabbit.png"

# adjusting wallpaper size

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorrdp0/workspace0/image-style --create -t int -s 3

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorrdp0/workspace1/image-style --create -t int -s 3

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorrdp0/workspace2/image-style --create -t int -s 3

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorrdp0/workspace3/image-style --create -t int -s 3


xfdesktop --reload

nohup plank & 
