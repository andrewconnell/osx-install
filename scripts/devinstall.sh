#!/bin/sh

brew cask install adobe-creative-cloud
brew cask install atom
brew cask install balsamiq-mockups
brew cask install camtasia
brew cask install charles
brew cask install firefox
brew cask install java
brew cask install screenflow
brew cask install smartgit
brew cask install smartsynchronize
brew cask install toggldesktop
brew cask install snagit
brew cask install xmind
brew cask install webstorm
brew install mono

# install travis
brew install ruby
sudo gem update --system
sudo gem install travis -v 1.8.0 --no-rdoc --no-ri
