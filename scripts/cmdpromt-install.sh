#!/bin/sh

# install zsh
brew install zsh zsh-completions

# install oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install iterm2
brew cask install iterm2

# copy fonts
cp ./app-settings/iterm/fonts/"Meslo LG M DZ Regular for Powerline.otf" ~/Library/Fonts
cp -r ./app-settings/iterm/fonts/"Source Code Pro" ~/Library/Fonts/"Source Code Pro"

# copy ZSH theme
cp ./app-settings/iterm/bullet-train.zsh-theme ~/.oh-my-zsh/themes