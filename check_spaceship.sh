#!/bin/bash

# Define the path to the spaceship-prompt theme
SPACESHIP_THEME_PATH="$ZSH_CUSTOM/themes/spaceship-prompt"

# Check if the spaceship-prompt directory exists
if [ ! -d "$SPACESHIP_THEME_PATH" ]; then
  echo "[spaceship-prompt](https://github.com/spaceship-prompt/spaceship-prompt) > Installation > Oh-My-Zsh"
  echo
  echo "1. Clone this repo:"
  echo "git clone https://github.com/spaceship-prompt/spaceship-prompt.git \"\$ZSH_CUSTOM/themes/spaceship-prompt\" --depth=1"
  echo
  echo "2. Symlink spaceship.zsh-theme to your oh-my-zsh custom themes directory:"
  echo "ln -s \"\$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme\" \"\$ZSH_CUSTOM/themes/spaceship.zsh-theme\""
else
  echo "spaceship-prompt is already installed at $SPACESHIP_THEME_PATH."
fi
