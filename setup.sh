#!/bin/sh

echo "Install fonts"
brew install font-cascadia-code

echo "Install softwares"
brew install htop neovim ripgrep asdf direnv

echo "Copy config files"
mkdir -p ~/.config/
cp -r ./.config/ ~/.config/
cp ./.profile ~
