# 💤 Neovim combined configs

Neovim configs for [LazyVim](https://www.lazyvim.org/), [AstroNvim](https://astronvim.com/), [NvChad](https://nvchad.com/) and my own config (maybe).

## Requirements

### Arch Linux

```sh
# Neovim
sudo pacman -S neovim

# git tar curl
sudo pacman -S git tar curl
# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"
# python npm go node
sudo pacman -S python npm go nodejs
# clang gcc make cmake
sudo pacman -S clang gcc make cmake

# Nerd Font
sudo pacman -S fontconfig
mkdir .tmp
curl -L --output-dir ".tmp" -O  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
curl -L --output-dir ".tmp" -O  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip
mkdir -p ~/.local/share/fonts/
unzip .tmp/JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
unzip .tmp/Hack.zip -d ~/.local/share/fonts/Hack
fc-cache -f -v
rm -rf .tmp

# treesitter
cargo install --locked tree-sitter-cli

# Lazygit fzf ripgrep fd
sudo pacman -S lazygit fzf ripgrep fd

# go DiskUsage() bottom for Astronvim
sudo pacman -S gdu bottom

# Clipboard integration
# https://neovim.io/doc/user/provider.html#clipboard-tool

# Install a terminal
```

### Direct Install

```sh
# Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Nerd Font
mkdir .tmp
curl -L --output-dir ".tmp" -O  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
curl -L --output-dir ".tmp" -O  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip
mkdir -p ~/.local/share/fonts/
unzip .tmp/JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
unzip .tmp/Hack.zip -d ~/.local/share/fonts/Hack
fc-cache -f -v
rm -rf .tmp

# lazygit
git clone https://github.com/jesseduffield/lazygit.git
cd lazygit
go install

# tree-sitter-cli
cargo install --locked tree-sitter-cli

# File find
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
cargo install ripgrep
cargo install fd-find

# go DiskUsage()
curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
mv gdu_linux_amd64 /usr/bin/gdu

# bottom
cargo install bottom --locked

# Clipboard integration
# https://neovim.io/doc/user/provider.html#clipboard-tool

# Install a terminal
```

## Installation

### 🐧 Linux

```sh
# backup current config
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# get new config
git clone https://github.com/bharathulaganathan/neovim ~/.config/nvim
```

### 🪁 Windows

```powershell
# backup current config
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak

# get new config
git clone https://github.com/bharathulaganathan/neovim $env:LOCALAPPDATA\nvim
```

## Setting alias

```sh
# LazyVim
alias lazyvim="NVIM_APPNAME=nvim/lazyvim nvim"

# AstroNvim
alias astronvim="NVIM_APPNAME=nvim/astronvim nvim"

# NvChad
alias nvchad="NVIM_APPNAME=nvim/nvchad nvim"
```

## Fresh Install (Optional)

### Backup

```sh
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

### [LazyVim](https://www.lazyvim.org/installation)

```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim/lazyvim

# optional
rm -rf ~/.config/nvim/lazyvim/.git
```

### [AstroNvim](https://docs.astronvim.com/#-installation)

```sh
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim/astronvim

# optional
rm -rf ~/.config/nvim/astronvim/.git
```

### [NvChad](https://nvchad.com/docs/quickstart/install)

```sh
git clone https://github.com/NvChad/starter ~/.config/nvim/nvchad

# optional
rm -rf ~/.config/nvim/nvchad/.git
```






