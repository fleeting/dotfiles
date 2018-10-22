ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="fleeting"

#DISABLE_UPDATE_PROMPT=true

# Aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias gitconfig="code ~/.gitconfig"

alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias ls="ls -G"
alias rm="trash"

# Enable aliases to be sudo’ed
alias sudo='sudo '

alias downloads="cd ~/Downloads"
alias documents="cd ~/Documents"
alias desktop="cd ~/Desktop"
alias sites="cd ~/Sites"

alias ip='IP=`dig +short myip.opendns.com @resolver1.opendns.com`; echo "${IP}=> IP copied to clipboard."; echo "${IP}" | pbcopy'
alias flushdns='dscacheutil -flushcache'
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to clipboard.'"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

alias addvhost="sh ~/Sites/puphpet/vhostalias.sh" # addvhost projectname.test /var/www/projectname
alias vssh="cd ~/Sites/puphpet && vagrant ssh"
alias hosts='code /etc/hosts'

# Deployments
alias deploythatshit="fab production deploy"

function ship() {
  fab production deploy;
}

function deploy() {
  fab "$@" deploy;
}

function cdeploy() {
  cap "$@" deploy; # capistrano alias for our old deployment process
}

# M-Pire CMS v2
alias cmscache="rm -rfv app/tmp/cache/* && mkdir app/tmp/cache/persistent && touch app/tmp/cache/persistent/empty && mkdir app/tmp/cache/models && touch app/tmp/cache/models/empty"
alias cmspublish="app/Console/cake publish --quiet"

alias habitat="ssh habitat"
alias habitatdeploy="ssh habitatdeploy"

alias g="git"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

alias update="sudo softwareupdate --install --all && brew update && brew upgrade && brew cleanup && npm install -g npm && npm update -g"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx git github git-extras node npm bower nyan lol alias-tips smart-cd-with-k battery)

source $ZSH/oh-my-zsh.sh
#source ~/.fresh/build/shell.sh
source ~/allthethings.sh
source ~/k.sh
#source ~/bazel/bazel-bin/scripts/bazel-complete.bash

# Customize to your needs...
NODE_PATH="$HOME/.npm-packages/lib/node_modules:$NODE_PATH"
export PATH=$HOME/.npm-packages/bin:$HOME/.rvm/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin:/:/Users/fleeting/Sites/mBoy/TSHM/site/public/lib/Cake/Console:~/.composer/vendor/bin:$HOME/bazel/output

export PATH="$HOME/.yarn/bin:$PATH"
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

# added by travis gem
[ -f /Users/fleeting/.travis/travis.sh ] && source /Users/fleeting/.travis/travis.sh
