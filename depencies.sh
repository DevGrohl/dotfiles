#Fonts
wget -P tmp/ https://aur.archlinux.org/cgit/aur.git/snapshot/ttf-font-awesome.tar.gz
wget -P tmp/ https://github.com/powerline/fonts

#Pacman
pacman -S xf86-video-vesa mesa xorg-server xorg-utils xorg-xinit xorg-xrandr rofi git sudo fakeroot make binutils gcc perl-anyevent-i3 unzip terminus-font xorg-xset ranger ncmpcpp mpc mpd

# Oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Vim Bundles
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PLuginInstall +qall
