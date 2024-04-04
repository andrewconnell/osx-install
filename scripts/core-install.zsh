#!/bin/zsh

# install ZSH
brew install zsh zsh-completions

# install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install NVM (will install specific versions of Node.js later)
brew install nvm

# install console prompt
brew install spaceship

# install Hyper.js terminal & plugins (switched to warp)
# brew install --cask hyper
# hyper i hyper-tailwind-dark
# hyper i hyper-search
# hyper i hyper-font-ligatures
