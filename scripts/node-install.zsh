#!/bin/zsh

# install node v6 (for SPFx SP2016)
# nvm install lts/boron
# curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-install-packages-lts-boron.zsh | zsh
# # setup aliases
# nvm alias spfx-1.6.0 lts/boron
# nvm alias spfx-sp2016 spfx-1.6.0

# install node v8 (for SPFx SP2019+SE)
# nvm install lts/carbon
# curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-install-packages-lts-carbon.zsh | zsh
# setup aliases
# nvm alias spfx-1.10.0 lts/carbon
# nvm alias spfx-sp2019se spfx-1.10.0

# install node v18 (LTS) for SPFx SPO
nvm install lts/hydrogen
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-install-packages-lts-hydrogen.zsh | zsh

# install node v20 (LTS)
nvm install lts/iron
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-install-packages-lts-iron.zsh | zsh

# set default option
nvm alias default lts/hydrogen
