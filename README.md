# Dotfiles

Dots that I use on my Linux Machine

## Installation

- Before cloning the repo add the following alias to .zshrc:

```
alias 'config'='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```

- Clone the repo:

```
git clone --bare https://github.com/s-praba-karan/dotfiles.git $HOME/dotfiles
```

- Checkout the actual content from the bare repository:

```
config checkout
```

If it shows any errors delete the already existing stock config.

- Set the flag `showUntrackedFiles` to `no` on this specific (local) repo:

```
config config --local status.showUntrackedFiles no
```

Now we are good to go!

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
