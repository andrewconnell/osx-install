OSX Buildout
============
This repo acts as a log for my buildout of my laptop. As I add stuff or change settings, I log it here so pave & restores can go quickly in the future. Feel free to fork & customize to your liking.

More background info: [BLOG: Rapid Complete Install / Reinstall OS X Like a Champ in Three-ish Hours](http://www.andrewconnell.com/blog/rapid-complete-install-reinstall-os-x-like-a-champ-in-three-ish-hours)

## Before Paving the primary Partition...

Do the following before paving the partition. This is to get the way I have things configured in the dock & menu bar back the way I want them.

- have a current Apple TimeMachine & CrashPlan backup job finished
- screenshot OSX dock
- screenshot expanded Bartender Apple MenuBar

## Pave Partition

1. restart with COMMAND+R
1. when apple logo comes up... delete partition, NOT tiny partition (2nd listed)
1. back up and install OSX via network

## After Pave, Install the Following

The following manual installs & configuration should be done to setup automated installs.

Xcode
- install via AppStore

[Sublime Text 3](www.sublimetext.com/3)
- add license
- [setup to run from command line anywhere](http://stackoverflow.com/questions/16199581/opening-sublime-text-on-command-line-as-subl-on-mac-os)
- [package control](https://packagecontrol.io/)
- install packages:
  - BracketHighlighter
  - Git
  - Indent XML
  - LiveReload
  - Markdown Preview
  - MarkdownEditing
  - PackageCotnrol
  - Preference Helper
  - Prety JSON
  - SideBarFolders
  - SnippetMaker
  - SublimeCodeIntel
  - Theme-Spacegray
  - TypeScript
  - View In Browser
- Update preferences from those in ~/Dropbox/MyAppSettings/Sublime

## Homebrew & Homebrew Cask

  ```bash
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor

  brew tap caskroom/cask
  brew install caskroom/cask/brew-cask
  brew doctor
  ```

## Install Core Apps
- run script [coreinstall.sh](scripts/coreinstall.sh)
  - change executable: `chmod a+x coreinstall.sh`
  - run using `./coreinstall.sh`
- login to the follwoing:
  - Dropbox
  - Evernote
  - Chrome
  - Skype
  - Google-drive
- apply licenses to Call Recorder & Sizeup
- xtraFinder
  - import settings from [XtraFinder.plist](app-settings/XtraFinder.plist)
- iTerm
  - copy fonts from [iterm/Source Code Pro Fonts](app-settings/iterm/Source Code Pro Fonts) => `~/Library/Fonts`
  - import color profiles from [iterm](app-settings/iterm)
  - [setup iTerm with oh-my-zsh & powerline](http://www.dotnet-rocks.com/2015/05/07/setting-up-iterm2-with-oh-my-zsh-and-powerline-on-osx/)
  - import settings from ~/Dropbox/My AppSettings
  - setup hotkey CONTROL + COMMAND + I

## Install App Store Stuff

Install this stuff from the Apple App Store, then run the next install scripts... while they run, configure these.

- EWallet
- Kindle
- Jump Desktop
  - *then sync the machines from folder in dropbox*
- Caffeine
- Lock Me Now
- Disk Doctor
- ReadKit
  - *then login using GoogleID*
- Parcel
  - *login*
- Disk Map
- CCMenu
- Display Menu
- LiveReload
- The Clock
  - *then restore settings from Dropbox*
- WeatherClip
	- *launch and configure*

## Install LiveReload

This wont work just right without the latest version, which isn’t in the App store.

So you then need to delete it from the list of installed programs after installing it, and then install from brew.

Additional tools installed in sublime make it work just fine.

## Install My Personal Apps

Run script [myinstall.sh](scripts/myinstall.sh)

- then login steam, slack
- then license bartender

## Install Dev Apps

Run script [devinstall.sh](scripts/devinstall.sh)

- license
  - camtasia
  - screenflow
  - charles
  - balsamiq-mockups
  - smartgit
  - smartsynchronize
  - snagit
  - webstorm
- setup
  - Creative-Cloud
    - import settings from Adobe CC, Adobe Media Encoder - import preferences from [app-settings/adobe-creative-suite](app-settings/adobe-creative-suite)
  - webstorm
    - import settings from [app-settings/webstorm10](app-settings/webstorm10)
- login ToggleDesktop
- Visual Studio Code
  - http://code.visualstudio.com manually, not the brew cask option… the latter didn’t work with the [command line launcher shorcut](https://code.visualstudio.com/Docs/setup#_mac-os-x)
  - install [Hack font](http://sourcefoundry.org/hack/)
    - font found in [app-settings](app-settings) as **Hack-*-otf.zip**
  - change settings to [app-settings/visual-studio-code/settings.json](app-settings/visual-studio-code)

## Install Node

manage node installs using nvm... this lets me test different versions of node as well as avoid issue with having to use `sudo` when installing packages globally

`brew install nvm`

make sure this is at the very end of `.zshrc`

```
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
```

install the latest version of node, for instance:
```
# list all available installs
nvm ls-remote
# install latest version
nvm install v4.2.1
```

now run [npminstall.sh](scripts/npminstall.sh) to install packages globally

### Setup Azure-cli AutoComplete:

	````bash
	$ azure —completion >> ~/azure.completion.sh
	$ echo ‘source ~/azure.completion.sh’ >> .bash_profile
	````

## Manual Download & Installs
Weren’t avail as brew / brew casks
- Amazon Music
  - install located in `~/Dropbox/My Utils/_Installs`
- Call Recorder (for skype)
  - install located in `~/Dropbox/My Utils/_Installs`
- Powermate
- Mac Office

Didn’t work as brew / brew casks

- BitDefender
  - install located in `~/Dropbox/My Utils/_Installs`
- CrashPlan
- Techsmith snagit
  - install located in `~/Dropbox/My Utils/_Installs`

## After all Installs, Update Brew, Brew Cask & Purge Installs

  ```bash
  brew update
  brew upgrade brew-cask
  brew cleanup
  ```

## Setup git:

  ```bash
  git config --global user.name "Andrew Connell"
  git config --global user.email <insert primary email>
  git config --global credential.helper osxkeychain
  ```

add gitignore to `~/.gitignore` for global ignore

## OSX Tweaks

- desktop
  - set icon size 40x40
  - grid spacing - midpoint
  - check SHOW ITEM INFO
- System Preferences > Dock
  - size 30%
  - magnification 80%
  - minimize windows = genie effect
  - animate opening apps
  - auto hide & show
  - show indicators for open apps
- System Preferences > Internet Accounts
  - iCloud
  - O365 <primary account>
  - gmail <primary account>
  - facebook
  - twitter <primary account>
  - facebook
  - don’t do linkedin... too many damn birthday alerts!
- System Preferences > Keyboard
  - CHECK Use all F1, F2, etc keys as standard function keys
- System Preferences > Keyboard > Shortcuts > Mission Control
  - disable Mission Control & Application Windows options
    - *these hijack the multi-line cursor ability in Subilme Text*

## Data Restore

- clone select repositories from github => ~/repos
- restore all data from Crashplan => ~/

## Setup backups
- time machine
- crashplan
  - backup everything in home directory
  - EXCLUDE these folders
    - Applications
    - Creative Cloud Files
    - Dropbox
    - Google Drive
    - OneDrive
    - Movies
    - Music
    - Public
    - repos

## Ongoing... HOWTO Keep Things Updated

to keep homebrew installed things update, do this:

  ```bash
  brew update       	# download app updated formulas
  brew outdated     	# what’s old?
  brew upgrade --all	# upgrade everything locally
  # because you can't upgrade casks, just reinstall everything you have installed
  brew cask list | xargs brew cask install --force
  # cleanup everything
  brew cleanup
  ```

[![Analytics](https://ga-beacon.appspot.com/UA-59891462-1/osx-buildout/readme)](https://github.com/igrigorik/ga-beacon)
