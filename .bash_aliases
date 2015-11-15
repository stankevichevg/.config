alias showDotFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideDotFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias f='find . -name '

export DOCKER_MACHINE="dev"
alias docker='source ~/.config/docker/docker.sh; docker '
