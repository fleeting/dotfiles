# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fleeting"

# Aliases
alias zshconfig="sublime ~/.zshrc"
alias ohmyzsh="sublime ~/.oh-my-zsh"

alias biscuit='ssh biscuitserv@173.45.237.106'
alias monkee='ssh monkee@173.45.242.248'
alias bizcenter='ssh defvayne23@173.45.225.99'
alias cranewest='ssh cranewest@173.45.224.188'
alias bankserver='ssh fstbnk@173.45.229.250'

alias flushdns='dscacheutil -flushcache'
alias cwcms="git clone git@github.com:crane-west/cwCMS.git site && cd site/ && sublime ."
alias getdrought="git clone git@github.com:jamesfleeting/Drought.git site && cd site/ && sublime ."
alias yuicompress="java -jar ~/Sites/yuicompressor-2.4.7/build/yuicompressor-2.4.7.jar"

alias git="hub" #http://defunkt.io/hub/
alias ls="ls -G"
alias rm="rm -i"
alias cp="cp -i"
alias g="git"

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx git github git-extras node npm sublime bower nyan lol)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin
