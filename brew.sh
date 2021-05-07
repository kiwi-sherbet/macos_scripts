# homebrew install

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew tap homebrew/core

brew update
brew upgrade

echo -e 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"'
