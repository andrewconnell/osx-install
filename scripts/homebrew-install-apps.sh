#!/bin/sh

# add additional repos for homebrew to track, update & install
TAPS=(
    cask
    cask-drivers
    cask-fonts
)

echo "Starting setup..."
brew tap ${TAPS[@]}

# install packages
PACKAGES=(
    git
    wget
    mas
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

# install cask apps
CASKS=(
    adobe-creative-cloud
    appcleaner
    balenaetcher
    figma
    handbrake
    keka
    logitech-options
    macs-fan-control
    makemkv
    microsoft-edge
    mountain-duck
    onyx
    principle
    rightfont
    sf-symbols
    signal
    sketch
    surfshark
    unpkg
    visual-studio-code
    wacom-tablet
    vmware-fusion
)

echo "Installing apps from the web..."
brew install cask ${CASKS[@]}