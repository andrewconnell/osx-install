#!/bin/sh

brew cask install sketchup
brew cask install synergy

brew install bitbar
brew install jsdoc3
brew install ffmpeg
brew install mactex
brew install pandoc
brew install youtube-dl

brew cask install appcleaner
brew cask install betterzipql
brew cask install google-hangounts
brew cask install keybase
brew cask install istat-menus
brew cask install powershell
brew cask install private-internet-access
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install vmware-fusion

# ripping dvds & blurays for PERSONAL archive
brew cask install handbrake
brew install libdvdcss
brew cask install makemkv

# configure handbrake to use makemkv for bluray
mkdir -p ~/lib
ln -s /Applications/MakeMKV.app/Contents/lib/libmmbd.dylib ~/lib/libaacs.dylib
ln -s /Applications/MakeMKV.app/Contents/lib/libmmbd.dylib ~/lib/libbdplus.dylib

# install fonts
cd ~/Library/Fonts
MSFT_FONTS="Segoe UI and Fabric MDL2"
mkdir "$MSFT_FONTS"
cd "$MSFT_FONTS"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/fonts/Segoe UI and Fabric MDL2/FabExMDL2.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/fonts/Segoe UI and Fabric MDL2/segoeui.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/fonts/Segoe UI and Fabric MDL2/segoeuib.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/fonts/Segoe UI and Fabric MDL2/segoeuil.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/fonts/Segoe UI and Fabric MDL2/segoeuisl.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/app-settings/fonts/Segoe UI and Fabric MDL2/seguisb.ttf"
