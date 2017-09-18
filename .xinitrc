
#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

feh --bg-fill Pictures/Wallpapers/wallhaven-521782.png

numlockx &

exec i3
#exec gnome-session
