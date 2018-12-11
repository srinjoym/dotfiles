#!/bin/bash
#install and configure iterm
function install_iterm2(){
        brew cask install iterm2
        git clone https://github.com/powerline/fonts.git --depth=1
        cd fonts
        ./install.sh
        cd ..
        rm -rf fonts
}

if [[ "$OSTYPE" == "darwin"* ]]; then
        install_iterm2
        echo "Installed iterm2, remember to configure manually"
fi
