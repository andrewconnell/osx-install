#!/bin/sh

# add additional repos for homebrew to track, update & install

# homebrew cask updater: https://github.com/buo/homebrew-cask-upgrade
brew tap buo/cask-upgrade
# add cask-drivers
brew tap homebrew/cask-drivers
# add fonts
brew tap homebrew/cask-fonts
# add azure functions
brew tap azure/functions

# install apps
brew install act
brew install asciinema
brew install azure-cli
brew install azure/functions/azure-functions-core-tools@3
brew install bash-completion
brew install bfg
brew install carthage
brew install cask
brew install docker
brew install esptool
brew install ffmpeg
brew install gh
brew install ghostscript
brew install git
brew install go
brew install gzip
brew install highlight
brew install hugo
brew install jq
brew install jsdoc3
brew install libdvdcss
brew install mas
brew install meson
brew install mono
brew install nasm
brew install nvm
brew install pandoc
brew install protobuf
brew install python@3.8
brew install rtmpdump
brew install spaceship
brew install sphinx-doc
brew install sshfs
brew install svn
brew install tee-clc
brew install telnet
brew install watch
brew install watchman
brew install yarn
brew install youtube-dl
brew install yq
brew install zsh
brew install zsh-completions


brew install --cask adobe-creative-cloud
brew install --cask alfred
brew install --cask appcleaner
brew install --cask azure-data-studio
brew install --cask bartender
brew install --cask bitbar
brew install --cask bot-framework-emulator
brew install --cask camtasia
brew install --cask charles
brew install --cask discord
brew install --cask dotnet-sdk
brew install --cask drawio
brew install --cask elgato-control-center
brew install --cask elgato-stream-deck
brew install --cask firefox
brew install --cask font-consolas-for-powerline
brew install --cask font-dejavu
brew install --cask font-dejavu-sans-mono-for-powerline
brew install --cask font-dejavu-sans-mono-nerd-font
brew install --cask font-fira-code
brew install --cask font-fira-code-nerd-font
brew install --cask font-fira-mono-for-powerline
brew install --cask font-fira-sans
brew install --cask font-hack
brew install --cask font-jetbrains-mono
brew install --cask font-menlo-for-powerline
brew install --cask font-meslo-for-powerline
brew install --cask font-meslo-lg-dz
brew install --cask font-meslo-lg-nerd-font
brew install --cask font-source-code-pro
brew install --cask font-source-code-pro-for-powerline
brew install --cask font-powerline-symbols
brew install --cask forecast
brew install --cask google-chrome
brew install --cask grammarly
brew install --cask handbrake
brew install --cask home-assistant
brew install --cask hyper
brew install --cask istat-menus
brew install --cask java
brew install --cask makemkv
brew install --cask microsoft-azure-storage-explorer
brew install --cask microsoft-edge
brew install --cask microsoft-teams
brew install --cask ngrok
brew install --cask nosleep
brew install --cask notion
brew install --cask obs
brew install --cask obs-ios0-camera-source
brew install --cask obs-ndi
brew install --cask osxfuse
brew install --cask parallels
brew install --cask postman
brew install --cask powershell
brew install --cask private-internet-access
brew install --cask screenflow
brew install --cask sketchup
brew install --cask skype
brew install --cask slack
brew install --cask smartgit
brew install --cask smartsynchronize
brew install --cask snagit
brew install --cask steam
brew install --cask tradingview
brew install --cask tripmode
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask wireshark
brew install --cask xmind
brew install --cask zoom

# install hyper plugins
hyper i hyper-tailwind-dark
hyper i hyper-search
hyper i hyper-font-ligatures
