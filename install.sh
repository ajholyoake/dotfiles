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
ln -s $(pwd)/git-completion.bash ~/.git-completion.bash
ln -s $(pwd)/git-prompt.sh ~/.git-prompt.sh
ln -s $(pwd)/.bash_secrets ~/.bash_secrets

source $(pwd)/.bash_profile

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
