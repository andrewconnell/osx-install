#!/bin/sh
# Add Homebrew to PATH
read -p "Please enter your computer's username. You can find it as your home folder:"  HOMEFOLDER
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$HOMEFOLDER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew doctor

# add additional repos for homebrew to track, update & install
echo "Starting setup..."
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers

# install packages
PACKAGES=(
    #git
    wget
    mas
)

echo "Installing packages..."
brew install ${PACKAGES[@]}