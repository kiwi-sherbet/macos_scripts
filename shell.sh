brew update
brew upgrade

#brew install tmux
#brew install reattach-to-user-namespace

brew install cowsay
brew install fortune
gem install lolcat

brew install zsh --disable-etcdir

#brew install mutt
#cp ./terminal/.muttrc ~/.muttrc
#chmod 755 ./terminal/mutt/urldefensedefense
#chmod 755 ./terminal/mutt/mutt-ics

#nvram boot-args="rootless=0 kext-dev-mode=1"

brew install vim --env-std --override-system-vim
mkdir ~/.vim/colors
rm ~/.vimrc
cp ./terminal/.vimrc ~/.vimrc
cp ./terminal/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim

#NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm ./install.sh

#shortcuts
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom
#ln -s /Applications/Unity/Unity.app/Contents/MacOS/Unity /usr/local/bin/unity
#ln -s /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin /usr/texbin

#Powerline
pip install https://github.com/Lokaltog/powerline/tarball/develop
git clone https://github.com/powerline/fonts.git ~/fonts
. ~/fonts/install.sh
rm -rf ~/fonts

#install Oh My Zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
rm ~/.zshrc
cp ./terminal/.zshrc ~/.zshrc
