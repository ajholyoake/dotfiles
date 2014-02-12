#!/bin/bash
mv ~/.bash_profile{,_old}
mv ~/.bashrc{,_old}
mv ~/.inputrc{,_old}
mv ~/.bashrc.local{,_old}
mv ~/.gitconfig{,_old}

ln -s $(pwd)/.bash_profile ~/.bash_profile
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.inputrc ~/.inputrc
ln -s $(pwd)/.bashrc.local ~/.bashrc.local
ln -s $(pwd)/.gitconfig ~/.gitconfig

source $(pwd)/.bash_profile

