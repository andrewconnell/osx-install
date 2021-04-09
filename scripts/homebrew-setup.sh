#!/bin/sh

# add additional repos for homebrew to track, update & install
echo "Starting setup..."
brew tap cask
brew tap cask-drivers
brew tap cask-fonts

# install packages
PACKAGES=(
    git
    wget
    mas
)

echo "Installing packages..."
brew install ${PACKAGES[@]}