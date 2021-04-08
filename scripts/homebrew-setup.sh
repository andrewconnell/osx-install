#!/bin/sh

# add additional repos for homebrew to track, update & install
echo "Starting setup..."
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts

# install packages
PACKAGES=(
    git
    wget
    mas
)

echo "Installing packages..."
brew install ${PACKAGES[@]}