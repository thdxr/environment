#!/bin/bash
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/dax/.oh-my-zsh
cd /home/dax/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

shopt -s dotglob
for file in /home/dax/dev/environment/shell/dotfiles/*; do
	name=${file##*/}
	echo $name
	ln -s $file /home/dax/$name
done

mkdir /home/dax/.unison/
ln -s /home/dax/dev/environment/shell/custom/unison/default.prf /home/dax/.unison/default.prf

