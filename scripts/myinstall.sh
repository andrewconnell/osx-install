#!/bin/sh

brew cask install gopro-studio
brew cask install logitech-harmony
brew cask install sketchup
brew cask install synergy

brew install jsdoc3
brew install ffmpeg
brew install pandoc
brew install youtube-dl

brew cask install appcleaner
brew cask install betterzipql
brew cask install google-hangounts
brew cask install keybase
brew cask install istat-menus
brew cask install qlcolorcode
brew cask install qlimageize
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json

# ripping dvds & blurays for PERSONAL archive
brew cask install handbrake
brew install libdvdcss
brew cask install makemkv
# configure handbrake to use makemkv for bluray
mkdir -p ~/lib
ln -s /Applications/MakeMKV.app/Contents/lib/libmmbd.dylib ~/lib/libaacs.dylib
ln -s /Applications/MakeMKV.app/Contents/lib/libmmbd.dylib ~/lib/libbdplus.dylib
