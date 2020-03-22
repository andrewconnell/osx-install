#!/bin/sh

# Azure CLI 2.0
curl -L https://aka.ms/InstallAzureCli | bash

# Adobe creative cloud installer
# brew cask install adobe-creative-cloud
/usr/local/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app

# install fonts
cd ~/Library/Fonts
MSFT_FONTS="Segoe UI and Fabric MDL2"
mkdir "$MSFT_FONTS"
cd "$MSFT_FONTS"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/AppSettings/fonts/Segoe UI and Fabric MDL2/FabExMDL2.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/AppSettings/fonts/Segoe UI and Fabric MDL2/segoeui.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/AppSettings/fonts/Segoe UI and Fabric MDL2/segoeuib.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/AppSettings/fonts/Segoe UI and Fabric MDL2/segoeuil.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/AppSettings/fonts/Segoe UI and Fabric MDL2/segoeuisl.ttf"
curl -O "https://github.com/andrewconnell/osx-install/raw/master/AppSettings/fonts/Segoe UI and Fabric MDL2/seguisb.ttf"
