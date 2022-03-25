#!/bin/sh

# Ensure fish dotfiles are set up appropriately
mkdir -p ~/.config
ln -s $(pwd)/fish ~/.config

cat .zshrc >> ~/.zshrc

if [ -n "$SPIN" ]; then
  chsh -s /usr/bin/fish spin
fi
