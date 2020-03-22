#!/bin/sh

CURRENT_DIR=`pwd`

# install zsh  (already installed by homebrew)
# brew install zsh zsh-completions

# install oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install iterm2  (already installed by homebrew)
# brew cask install iterm2

# download fonts straight to the correct folder if this script was run remotely
cd ~/Library/Fonts
curl -O "https://github.com/andrewconnell/osx-install/blob/master/AppSettings/iTerm/fonts//Meslo LG M DZ Regular for Powerline.otf"

SOURCE_CODE_PRO_FOLDER="Source Code Pro"
mkdir "$SOURCE_CODE_PRO_FOLDER"
cd "$SOURCE_CODE_PRO_FOLDER"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/AppSettings/iTerm/fonts//Source Code Pro/SourceCodePro-Black.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/AppSettings/iTerm/fonts//Source Code Pro/SourceCodePro-Bold.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/AppSettings/iTerm/fonts//Source Code Pro/SourceCodePro-ExtraLight.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/AppSettings/iTerm/fonts//Source Code Pro/SourceCodePro-Light.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/AppSettings/iTerm/fonts//Source Code Pro/SourceCodePro-Medium.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/AppSettings/iTerm/fonts//Source Code Pro/SourceCodePro-Regular.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/AppSettings/iTerm/fonts//Source Code Pro/SourceCodePro-Semibold.otf"

# download ZSH theme
cd ~/.oh-my-zsh/themes
curl -O "https://raw.githubusercontent.com/andrewconnell/osx-install/master/AppSettings/iTerm/bullet-train.zsh-theme"

# install shell integration & utilities
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

cd "$CURRENT_DIR"
