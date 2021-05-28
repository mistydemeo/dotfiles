#!/bin/sh

# Ensure fish dotfiles are set up appropriately
mkdir -p ~/.config
ln -s $(pwd)/fish ~/.config

# Install fish
sudo apt-get update && sudo apt-get install -y fish
