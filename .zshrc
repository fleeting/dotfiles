# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="fleeting"

# Aliases
alias zshconfig="atom ~/.zshrc"
alias ohmyzsh="atom ~/.oh-my-zsh"
alias gitconfig="atom ~/.gitconfig"

alias .="open ."
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

alias ip='IP=`dig +short myip.opendns.com @resolver1.opendns.com`; echo "${IP}=> IP copied to clipboard."; echo "${IP}" | pbcopy'
alias flushdns='dscacheutil -flushcache'
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to clipboard.'"

alias getdrought="git clone git@github.com:jamesfleeting/Drought.git site && cd site/ && atom ."
alias vagrantinit="git clone git@github.com:Monkee-Boy/Vagrant-LAMP-Stack.git | echo '=> Cloning MBoy Vagrant Repo...'"
alias hr="sh ~/misc/hr"
alias r2d2="cd /Volumes/R2D2/"
alias rebelbase="cd /Volumes/RebelBase/"
alias homesteadreload="vagrant reload acd9d27 --provision"
alias addvhost="sh ~/Sites/mBoy/mboy-vagrant/vagrantvhost.sh" # addvhost thestoryoftexas.dev /vagrant/TSHM/tshm-mbcms
alias deploythatshit="cap production deploy"

alias cmscache="rm -rfv app/tmp/cache/* && mkdir app/tmp/cache/persistent && touch app/tmp/cache/persistent/empty && mkdir app/tmp/cache/models && touch app/tmp/cache/models/empty"
alias cmspublish="app/Console/cake publish --quiet"

#alias git="hub" #http://defunkt.io/hub/
alias ls="ls -G"
alias rm="rm -i"
alias cp="cp -i"
alias g="git"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -boolean true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -boolean false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias showdeskicons="defaults write com.apple.finder CreateDesktop -boolean true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -boolean false && killall Finder"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx git github git-extras node npm bower nyan lol alias-tips hipchat smart-cd-with-k)

source $ZSH/oh-my-zsh.sh
#source ~/.fresh/build/shell.sh
source ~/k.sh
#source ~/bazel/bazel-bin/scripts/bazel-complete.bash

# Customize to your needs...
NODE_PATH="$HOME/.npm-packages/lib/node_modules:$NODE_PATH"
export PATH=$HOME/.npm-packages/bin:$HOME/.rvm/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin:/:/Users/fleeting/Sites/mBoy/TSHM/site/public/lib/Cake/Console:~/.composer/vendor/bin:$HOME/bazel/output

export HIPCHAT_API_TOKEN=''
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

# added by travis gem
[ -f /Users/fleeting/.travis/travis.sh ] && source /Users/fleeting/.travis/travis.sh
