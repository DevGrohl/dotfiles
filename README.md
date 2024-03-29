# Installation and configuration for WSL

## Packages

```
sudo apt-get install git wget curl neovim zsh python3-pip
```

## Neovim

### Installation on Debian

```
sudo apt-get install neovim
sudo apt-get install python-neovim
sudo apt-get install python3-neovim
```

### Installation from Source to get version 0.8.0+

```
Download nvim-linux64.deb from: https://github.com/neovim/neovim/releases
sudo apt install ./nvim-linux64.deb
```

### Configuration

Install LazyVim

```
git clone https://github.com/LazyVim/starter ~/.config/nvim/
```

Copy .config folder to $HOME

## Fonts installation

### Download the repo with the patched fonts

```
git clone https://github.com/powerline/fonts
```

### From Powershell change the Execution Policy & install

```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\install.ps1
```

## oh-my-zsh & powerlevel10k

### Installation

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Configuration

Copy `.zshrc` file to $HOME

```
cp .zshrc $HOME
```
