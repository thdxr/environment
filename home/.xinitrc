dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
xrdb ~/.Xresources
source ~/.screenlayout/screen.sh
source ~/dev/environment/custom/environment
exec i3
