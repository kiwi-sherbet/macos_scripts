brew update
brew install pyenv pyenv-virtualenv
sudo pyenv install 3.4.1
sudo pyenv install 2.7.8
. pip.sh

brew install opencv 
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

brew install sdl sdl_image sdl_mixer sdl_ttf smpeg portmidi 
/usr/local/share/python/pip install hg+http://bitbucket.org/pygame/pygame