#!/bin/zsh

# install apps
brew install act
brew install asciinema
brew install azure-cli
brew install bfg
brew install carthage
brew install cask
brew install dropbox
brew install esptool
brew install ffmpeg
brew install gh
brew install ghostscript
brew install git
brew install go
brew install gobject-introspection
brew install gzip
brew install highlight
brew install hugo
brew install jq
brew install jsdoc3
brew install ledger-live
brew install libdvdcss
brew install markdownlint-cli
brew install mas
brew install meson
brew install nasm
brew install openssl@3
brew install pandoc
brew install pnpm
brew install protobuf
brew install ripgrep
brew install rtmpdump
brew install sphinx-doc
brew install subversion
brew install telnet
brew install watch
brew install watchman
brew install yarn
brew install yq
brew install yt-dlp


brew install --cask 1password
brew install --cask 1password-cli
brew install --cask adobe-creative-cloud
brew install --cask alfred
brew install --cask azure-data-studio
brew install --cask bartender
brew install --cask bitbar
brew install --cask bot-framework-emulator
brew install --cask canva
brew install --cask chatgpt
brew install --cask discord
brew install --cask docker
brew install --cask dotnet-sdk
brew install --cask drawio
brew install --cask firefox
brew install --cask forecast
brew install --cask google-chrome
brew install --cask grammarly
brew install --cask handbrake
brew install --cask home-assistant
brew install --cask istat-menus
brew install --cask java
brew install --cask loom
brew install --cask microsoft-azure-storage-explorer
brew install --cask microsoft-edge
brew install --cask microsoft-teams # may not install on Apple Silicon
brew install --cask ngrok
brew install --cask nosleep
brew install --cask notion
brew install --cask obs
brew install --cask postman
brew install --cask powershell
brew install --cask screenflow
brew install --cask slack
brew install --cask smartgit
brew install --cask smartsynchronize
brew install --cask steam
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask warp
brew install --cask zoom
brew install --cask zxpinstaller


# homebrew cask updater: https://github.com/buo/homebrew-cask-upgrade
brew tap buo/cask-upgrade


# install azure functions tools
brew tap azure/functions
brew install azure/functions/azure-functions-core-tools@4


# install ssh pass
#   ref: https://gist.github.com/arunoda/7790979?permalink_comment_id=4035295#gistcomment-4035295
brew tap esolitos/ipa
brew install esolitos/ipa/sshpass


# install Microsoft's Dev Proxy
#   ref:https://learn.microsoft.com/microsoft-cloud/dev/dev-proxy/overview
brew tap microsoft/dev-proxy
brew install dev-proxy

# add cask-drivers
# brew tap homebrew/cask-drivers

# desktop only
# brew install --cask audio-hijack            # desktop only
# brew install --cask elgato-control-center   # desktop only
# brew install --cask elgato-stream-deck      # desktop only
# brew install --cask loopback                # desktop only
# brew install --cask obs-ios-camera-source   # desktop only
# brew install --cask parallels               # desktop only
# brew install --cask rode-central            # desktop only
# brew install --cask rode-unify              # desktop only
