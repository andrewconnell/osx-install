# added locations to path variable
export PATH=$PATH:/Users/ac/bin
export PATH="/usr/local/sbin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Starship prompt configuration
# export SPACESHIP_CONFIG="$HOME/.spaceshiprc.zsh"
## fix issue with Warp [terminal] + starship [prompt] type ahead
##  https://github.com/warpdotdev/Warp/issues/1973
export SPACESHIP_PROMPT_ASYNC=FALSE

# NVM directory
export NVM_DIR="$HOME/.nvm"

export EDITOR='code'
