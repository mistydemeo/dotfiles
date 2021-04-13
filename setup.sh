#!/bin/sh

# Ensure fish dotfiles are set up appropriately
mkdir -p ~/.config
ln -s fish ~/.config

# Install fish
sudo apt-get install -y fish
