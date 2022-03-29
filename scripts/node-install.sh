#!/bin/sh

# install node v6 (for SPFx SP2016)
nvm install lts/boron
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-install-packages-lts-boron.sh | sh
# setup aliases
nvm alias spfx-1.6.0 lts/boron
nvm alias spfx-sp2016 spfx-1.6.0

# install node v8 (for SPFx SP2019+SE)
nvm install lts/carbon
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-install-packages-lts-carbon.sh | sh
# setup aliases
nvm alias spfx-1.10.0 lts/carbon
nvm alias spfx-sp2019se spfx-1.10.0

# install node v14 (LTS) for SPFx SPO
nvm install lts/fermium
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-install-packages-lts-fermium.sh | sh
# setup aliases
nvm alias spfx-1.14.0 lts/fermium
nvm alias spfx-spo spfx-1.14.0

# set default option
nvm alias default lts/fermium
