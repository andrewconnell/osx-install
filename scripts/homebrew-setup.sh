#!/bin/sh
# Add Homebrew to PATH
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> '~/.zprofile'
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