#!/bin/bash

# Logout using dmenu

chosen=$(echo -e "qwerty\ndvorak" | rofi -show drun -dmenu -i)

if [[ $chosen = "qwerty" ]]; then
    setxkbmap us
elif [[ $chosen = "dvorak" ]]; then
	  setxkbmap us dvorak
fi
