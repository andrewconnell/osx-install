#!/bin/sh

CURRENT_DIR=`pwd`

# install zsh
brew install zsh zsh-completions

# install oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install iterm2
brew cask install iterm2

# download fonts straight to the correct folder if this script was run remotely
cd ~/Library/Fonts
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/iterm/fonts/Meslo LG M DZ Regular for Powerline.otf"

SOURCE_CODE_PRO_FOLDER="Source Code Pro"
mkdir "$SOURCE_CODE_PRO_FOLDER"
cd "$SOURCE_CODE_PRO_FOLDER"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/iterm/fonts/Source Code Pro/SourceCodePro-Black.otf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/iterm/fonts/Source Code Pro/SourceCodePro-Bold.otf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/iterm/fonts/Source Code Pro/SourceCodePro-ExtraLight.otf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/iterm/fonts/Source Code Pro/SourceCodePro-Light.otf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/iterm/fonts/Source Code Pro/SourceCodePro-Medium.otf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/iterm/fonts/Source Code Pro/SourceCodePro-Regular.otf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/iterm/fonts/Source Code Pro/SourceCodePro-Semibold.otf"

# download ZSH theme
cd ~/.oh-my-zsh/themes
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/iterm/bullet-train.zsh-theme"

# download zsh configration
cd ~/.
curl -O "https://github.com/andrewconnell/osx-install/raw/master/system-files/.zshrc"


cd "$CURRENT_DIR"