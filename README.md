# Packages

`sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort pkglist.txt))`

# Relocate config files

```
cp -r .config $HOME
cp .zshrc $HOME
```

# NVIM Installation

https://github.com/DevGrohl/Astrovim
