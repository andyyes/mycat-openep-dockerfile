#!/bin/bash

[ -d ~/.oh-my-zsh ] && exit

yum -y install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
wget -O /etc/profile.d/autojump.zsh https://raw.githubusercontent.com/joelthelion/autojump/master/bin/autojump.zsh
sed -i 's/--add/-a/g' /etc/profile.d/autojump.zsh
cp zshrc ~/.zshrc