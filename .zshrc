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

alias mboywp="git svn clone -s https://monkeeboy.svn.beanstalkapp.com/mboy-wordpress-theme/ && open mboy-wordpress-theme"
alias cwcms="git clone git@github.com:crane-west/cwCMS.git site && cd site/ && atom ."
alias getdrought="git clone git@github.com:jamesfleeting/Drought.git site && cd site/ && atom ."
alias vagrantclone="git clone git@github.com:Monkee-Boy/Vagrant-LAMP-Stack.git"
#alias yuicompress="java -jar ~/Sites/yuicompressor-2.4.7/build/yuicompressor-2.4.7.jar"
alias hr="sh ~/misc/hr"
alias r2d2="cd /Volumes/R2-D2/"

# alias git="hub" #http://defunkt.io/hub/
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
plugins=(osx git github git-extras node npm bower nyan lol)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin:/:/Users/james/Sites/TSHM/cms/lib/Cake/Console
