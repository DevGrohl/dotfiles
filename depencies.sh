#Pacman
su
pacman -S xf86-video-vesa mesa xorg-server xorg-utils xorg-xinit xorg-xrandr rofi git sudo fakeroot make binutils gcc perl-anyevent-i3 unzip terminus-font xorg-xset ranger ncmpcpp mpc mpd rsync cmake vlc ntfs-3g xorg-xlsfonts netbeans htop scrot lm_sensors xdotools ruby awk rfkill networkmanager network-manager-applet feh weechat xf86-input-synaptics file-roller rhythmbox vim wget zsh alsa-utils

pacman -S php mariadb php-apache php-mcrypt phpmyadmin php-intl php-imap php-sqlite

exit

#Fonts
wget -P tmp/ https://aur.archlinux.org/cgit/aur.git/snapshot/ttf-font-awesome.tar.gz
git clone https://github.com/powerline/fonts

#i3
git clone https://github.com/Airblader/i3
git clone https://github.com/vivien/i3blocks
    
 mysql_install_db --user=mysql --basedir=/usr/ --ldata=/var/lib/mysql/
 mysql_secure_installation

# Oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Vim Bundles
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PLuginInstall +qall

# Yaourt
wget -P tmp/ https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
wget -P tmp/ https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz

tar -xzvf package-query.tar.gz && cd package-query/ && makepkg -s
tar -xzvf yaourt.tar.gz && cd yaourt/ && makepkg -s

yaourt -S sublime-text-dev atom-editor playerctl spotify
