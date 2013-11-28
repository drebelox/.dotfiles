# osx
alias hidden!="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# Redis
alias redis-up="redis-server $DOTFILES/redis/redis.conf > /dev/null &"
alias redis-down='killall redis-server'

# System

# helper aliases
alias zshconfig="st ~/.zshrc"
alias ohmyzsh="st ~/.oh-my-zsh"
alias c="cd ~/code"
alias d="cd ~/Desktop"
alias cpt="component"
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias safari="open -a Safari"
alias ff="open -a Firefox"

# Remove the hosts that I don't want to keep around- in this case, only
# keep the first host.
alias hosts="head -2 ~/.ssh/known_hosts | tail -1 > ~/.ssh/known_hosts"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"


# Exports

## PATH
export PATH=./bin:$HOME/bin:$PATH:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:$HOME/gocode/bin

## Node.js
export NODE_ENV=development

## cairo
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

## man pages
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

## android
export ANDROID_NDK="/opt/android-ndk-r9b"
export ANDROID='/opt/android-sdk'

## Go
export GOPATH=$HOME/gocode

# Quick open project dirs
function p(){
  cd ~/projects/$1
}

# Quick open test_cases dirs
function tcase(){
  cd ~/test_cases/$1
}

function chrome(){
  /Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary \
    --force-app-mode \
    --enable-crxless-web-apps \
    --user-data-dir=$TMPDIR \
    --app=$1
}

function nipster(){
  open http://eirikb.github.com/nipster/#$1
}

# Quick open code dirs
function code(){
  cd ~/code/$1
}

# Rename
function rename(){
  ls $1 | while read fn; do
    mv "${fn}" "${fn/$1/$2}";
  done
}

# Ruby Stuff for cocoapods
export RBENV_ROOT="$(brew --prefix rbenv)"
export GEM_HOME="$(brew --prefix)/opt/gems"
export GEM_PATH="$(brew --prefix)/opt/gems"
