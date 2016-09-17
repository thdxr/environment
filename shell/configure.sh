#!/bin/bash
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/$1/.oh-my-zsh
cd /home/$1/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

shopt -s dotglob
for file in /home/$1/dev/environment/shell/dotfiles/*; do
	name=${file##*/}
	echo $name
	ln -s $file /home/$1/$name
done
