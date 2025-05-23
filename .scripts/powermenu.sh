#!/bin/bash

# Logout using dmenu

chosen=$(echo -e "Lock\nReboot\nShutdown" | rofi -show drun -dmenu -i)

if [[ $chosen = "Lock" ]]; then
    ~/.scripts/lock.sh
elif [[ $chosen = "Shutdown" ]]; then
	loginctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	loginctl reboot
fi
