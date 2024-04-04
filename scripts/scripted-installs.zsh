#!/bin/zsh

CURRENT_DIR=$PWD

# install "oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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

cd ~/Library/Fonts
mkdir "AC Handwriting" && cd $_
curl -O "https://github.com/andrewconnell/osx-install/blob/master/fonts/AC Handwriting/AndrewConnellHandwritingV1-Regular.ttf"

cd "$CURRENT_DIR"
