#Font Awesome
#wget -P tmp/ https://aur.archlinux.org/cgit/aur.git/snapshot/ttf-font-awesome.tar.gz

#Font symbola
#wget -P tmp/ https://projects.archlinux.org/svntogit/community.git/snapshot/community-e28ff2ffb028ccd2233224bb6d124af12d655075.tar.gz 

#Pacman
pacman -S xf86-video-vesa mesa xorg-server xorg-utils xorg-xinit xorg-xrandr rofi git sudo fakeroot make binutils gcc perl-anyevent-i3 unzip terminus-font xorg-xset ranger ncmpcpp mpc mpd

# Oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Vim Bundles
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PLuginInstall +qall
