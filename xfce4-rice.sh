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


plank &


