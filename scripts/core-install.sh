#!/bin/sh

# install ZSH
brew install zsh zsh-completions

# install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install NVM (will install specific versions of Node.js later)
brew install nvm

# install console prompt
brew install spaceship

# install Warp terminal
brew install warp
# install Warp theme
curl -s -N 'https://warp-themes.com/d/6j8o3VqP8g6Rh8ovdJXr' | bash

# install Hyper.js terminal & plugins
brew install --cask hyper
hyper i hyper-tailwind-dark
hyper i hyper-search
hyper i hyper-font-ligatures
