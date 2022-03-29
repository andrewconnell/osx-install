#!/bin/sh

CURRENT_DIR=`pwd`

# install "oh my zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install fonts
cd ~/Library/Fonts
mkdir "Segoe UI MDL2" && cd $_
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Segoe UI MDL2/Segoe UI Bold Italic.ttf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Segoe UI MDL2/Segoe UI Bold.ttf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Segoe UI MDL2/Segoe UI Italic.ttf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Segoe UI MDL2/Segoe UI Regular.ttf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Segoe UI MDL2/Segoe UI Semibold.ttf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Segoe UI MDL2/Segoe UI Semilight.ttf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Segoe UI MDL2/Segoe UI.ttf"

cd ~/Library/Fonts
mkdir "Omnes" && cd $_
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Omnes/Omnes-Bold.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Omnes/Omnes-Regular.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Omnes/OmnesExtraLight.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Omnes/OmnesLight.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Omnes/OmnesMedium.otf"
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Omnes/OmnesSemiBold.otf"

# download fonts straight to the correct folder if this script was run remotely
cd ~/Library/Fonts
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/Meslo LG M DZ Regular for Powerline.otf"

# download ZSH theme
cd ~/.oh-my-zsh/themes
curl -O "https://raw.githubusercontent.com/andrewconnell/osx-install/master/AppSettings/bullet-train.zsh-theme"

cd "$CURRENT_DIR"
