# MPD
#.config/mpd/mpd.conf
mkdir -p .config/mpd/
cp ~/.config/mpd/mpd.conf .config/mpd/

# Termite
#.config/termite/config/
mkdir -p .config/termite/
cp -r ~/.config/termite/ .config/

# Powerline
#.config/fontconfig/
mkdir -p .config/fontconfig/
cp -r ~/.config/fontconfig/ .config/

# i3
#.i3/config
#.i3/i3status.conf
#.i3/status.sh
#.i3/lemonbar/
#.i3/scripts/
mkdir -p .i3/scripts/
cp -r ~/.i3/* .i3/

# ncmpcpp
#.ncmpcpp/config
mkdir -p .ncmpcpp/
cp ~/.ncmpcpp/config .ncmpcpp/

# Vim
#.vimrc
#.vim/bundle/
#.vim/colors/
#mkdir -p .vim/bundle/
mkdir -p .vim/colors/
cp ~/.vimrc .
cp -r ~/.vim/colors/ .vim/

# weechat
#.weechat/*.con
mkdir -p .weechat/
cp -r ~/.weechat/*.conf .weechat/

# Xinit
#.xinitrc
cp ~/.xinitrc .

# Zsh
#.zshrc
cp ~/.zshrc .

# Config files
cp ~/.zshrc .
cp ~/.Xresources .
