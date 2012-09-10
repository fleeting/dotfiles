# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="fleeting"

# Aliases
alias zshconfig="sublime ~/.zshrc"
alias ohmyzsh="sublime ~/.oh-my-zsh"

alias flushdns='dscacheutil -flushcache'
alias cwcms="git clone git@github.com:crane-west/cwCMS.git site && cd site/ && sublime ."
alias getdrought="git clone git@github.com:jamesfleeting/Drought.git site && cd site/ && sublime ."
alias yuicompress="java -jar ~/Sites/yuicompressor-2.4.7/build/yuicompressor-2.4.7.jar"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin
