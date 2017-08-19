#!/bin/sh

brew cask install balsamiq-mockups
brew cask install camtasia
brew cask install charles
brew cask install docker
brew cask install firefox
brew cask install caskroom/fonts/font-hack
brew cask install fritzing
brew install Caskroom/versions/google-chrome-canary
brew cask install java
brew cask install microsoft-azure-storage-explorer
brew cask install mono
brew cask install ngrok
brew cask install postman
brew install protobuf
brew cask install screenflow
brew cask install smartgit
brew cask install smartsynchronize
brew cask install visual-studio
brew cask install visual-studio-code
brew cask install visual-studio-code-insiders
brew cask install xmind
brew cask install wireshark

# yarn but not dependencies (node)
brew install yarn --ignore-dependencies

# Azure CLI 2.0
curl -L https://aka.ms/InstallAzureCli | bash

# install terminal screen recorder
brew install asciinema

# docker stuff
brew install docker-clean
brew install docker-completion
brew install docker-compose-completion

# Adobe creative cloud installer
brew cask install adobe-creative-cloud
/usr/local/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app
