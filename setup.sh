#!/bin/sh

echo "Install fonts"
brew install font-cascadia-code

echo "Install softwares"
brew install htop neovim ripgrep

echo "Copy .config to ~/.config"
mkdir -p ~/.config/
cp -r ./.config/ ~/.config/
