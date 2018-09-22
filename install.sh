#!/usr/bin/env bash

cd ~
brew update
brew install emacs --with-cocoa
brew install cask
brew install mplayer
brew install ag
brew tap caskroom/fonts
brew cask install font-hack

if [ -d ~/.emacs.d ]; then
  echo backing up existing emacs dir
  mv ~/.emacs.d ~/.emacs.d.bak-$(date -u +'%Y%m%d%H%M%S')
fi
git clone https://github.com/sufyanadam/.emacs.d.git
cd ~/.emacs.d
cask
cask update
