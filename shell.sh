brew update
brew upgrade

brew install cowsay
brew install fortune
brew install lolcat

#brew install zsh
#brew install vim


#nvram boot-args="rootless=0 kext-dev-mode=1"

#pip3 install powerline-status
#mkdir ~/.vim/colors
#rm ~/.vimrc
#cp ./terminal/.vimrc ~/.vimrc
#cp ./terminal/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim

#NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm ./install.sh

#Fonts
git clone https://github.com/powerline/fonts.git ~/fonts
. ~/fonts/install.sh
rm -rf ~/fonts

#shortcuts

#install Oh My Zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
rm ~/.zshrc
cp ./terminal/.zshrc ~/.zshrc

mkdir -p $ZSH_CUSTOM/themes && curl -o $ZSH_CUSTOM/themes/rafiki.zsh-theme https://raw.githubusercontent.com/akabiru/rafiki-zsh/develop/rafiki.zsh-theme

#chmod 755 /usr/local/share/zsh
#chmod 755 /usr/local/share/zsh/site-functions
