#!/usr/bin/env bash

cd ~
brew update
brew install emacs --with-cocoa
brew install cask
if [ -d ~/.emacs.d ]; then
  echo backing up existing emacs dir
  mv ~/.emacs.d ~/.emacs.d.bak
fi
git clone https://github.com/sufyanadam/.emacs.d.git
cd ~/.emacs.d
cask
cask update
