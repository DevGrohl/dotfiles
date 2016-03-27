# MPD
#.config/mpd/mpd.conf
mkdir -p .config/mpd/
cp ~/.config/mpd/mpd.conf .config/mpd/

# Termite
#.config/termite/config/
mkdir -p .config/termite/
cp ~/.config/termite/config .config/termite/

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
mkdir -p .i3/lemonbar/
mkdir -p .i3/scripts/
cp ~/.i3/config .i3
cp ~/.i3/i3status.conf .i3/i3status.conf
cp ~/.i3/status.sh .i3/status.sh
cp -r ~/.i3/lemonbar/ .i3/
cp -r ~/.i3/scripts/ .i3/

# profanity
#.local/share/profanity/accounts
mkdir -p .local/share/profanity/
cp ~/.local/share/profanity/accounts .local/share/profanity/

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
#cp -r ~/.vim/bundle/ .vim/
cp -r ~/.vim/colors/ .vim/

# weechat
#.weechat/*.con
mkdir -p .weechat/
cp -r ~/.weechat/*.conf .weechat/

# Github
#.gitconfig
cp ~/.gitconfig .

# Xinit
#.xinitrc
cp ~/.xinitrc .

# Zsh
#.zshrc
cp ~/.zshrc .

# Sublime Text
mkdir -p .config/sublime-text-3/Packages
cp -r ~/.config/sublime-text-3/Packages/* .config/sublime-text-3/Packages/

# Config files
cp ~/.zshrc .
