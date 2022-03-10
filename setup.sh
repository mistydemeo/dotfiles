#!/bin/sh

# Ensure fish dotfiles are set up appropriately
mkdir -p ~/.config
ln -s $(pwd)/fish ~/.config

cat .zshrc >> ~/.zshrc
