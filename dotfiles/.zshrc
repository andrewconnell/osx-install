# >>> START former .zshenv
# ref https://apple.stackexchange.com/a/445577/59020
# ------------------------
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
# ------------------------
# >>> end former .zshenv



# core environment
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/envars.zsh ]] && source ~/.zsh/envars.zsh
## console setup... NVM, OMZ [shell] & Spaceship [prompt]
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/ohmyzsh.zsh ]] && source ~/.zsh/ohmyzsh.zsh
[[ -f ~/.zsh/spaceship.zsh ]] && source ~/.zsh/spaceship.zsh

# completions
[[ -f ~/.zsh/completions/az-cli.zsh ]] && source ~/.zsh/completions/az-cli.zsh
[[ -f ~/.zsh/completions/bash.zsh ]] && source ~/.zsh/completions/bash.zsh
[[ -f ~/.zsh/completions/ngrok.zsh ]] && source ~/.zsh/completions/ngrok.zsh
[[ -f ~/.zsh/completions/zsh.zsh ]] && source ~/.zsh/completions/zsh.zsh
