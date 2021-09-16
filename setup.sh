#!/bin/sh

echo "Install fonts"
brew install font-cascadia-code

echo "Install softwares"
brew install htop neovim ripgrep asdf direnv bat

echo "Prepare XDG_DATA_HOME"
mkdir -p $HOME/.config/
export XDG_DATA_HOME=$HOME/.config

echo "Install VimPlug for neovim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Copy config files"
mkdir -p ~/.config/
cp -r ./.config/ ~/.config/
cp ./.profile ~
