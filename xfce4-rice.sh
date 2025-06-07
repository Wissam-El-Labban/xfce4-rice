#!/bin/bash/

sudo apt install yaru-theme-gtk yaru-theme-icon yaru-theme-sound yaru-theme-gnome-shell -y

xfconf-query -c xsettings -p /Net/ThemeName -s "Yaru" -t string --create


xfconf-query -c xsettings -p /Net/IconThemeName -s "yaru" -t string --create


xfconf-query -c xsettings -p /GTK/CursorThemeName -s "yaru" -t string --create

xfconf-query -c xfwm4 -p /general/theme -s "Yaru" -t string --create

xfconf-query -c xfce4-panel -p /panels -r -R
