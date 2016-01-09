brew update
brew upgrade

brew install tmux
brew install reattach-to-user-namespace

brew install cowsay
brew install fortune
gem install lolcat

brew install zsh --disable-etcdir

#install Oh My Zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

rm ~/.zshrc

cp .zshrc ~/.zshrc

#shortcuts
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom
ln -s /Applications/Unity/Unity.app/Contents/MacOS/Unity /usr/local/bin/unity