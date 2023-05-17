# Dotfiles

## WMs
- [bspwm](https://github.com/s-praba-karan/dotfiles/tree/main/.config/bspwm)
- [dwm](https://github.com/s-praba-karan/dwm)


## Application And Utilites

•                       | • 
------------------------|-----------------------
**Editor**              | [Neovim](https://github.com/s-praba-karan/nvim)
**Compositor**          | Picom
**Application Launcher**| dmenu
**File manager**        | lf
**PDF Reader**          | Zathura
**Browser**             | Firefox
**Terminal**            | Alacritty
**Screenshot**          | Flameshot


## Touch To Tap Util
Edit `/etc/X11/xorg.conf.d/90-touchpad.conf` with admin perms
```conf
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection
```
