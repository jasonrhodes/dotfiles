#!/usr/bin/env bash

DOTFILES="$HOME/dotfiles"

if [ ! -d "$DOTFILES" ]; then
	echo "Please make sure your dotfiles repo is at ~/dotfiles, then try again."
	exit 1
fi

FILES=$HOME/dotfiles/files/.*

for f in $FILES
do 
	name=$(basename $f)

	if [ "$name" != "." ] && [ "$name" != ".." ]; then
		echo "Symlinking dotfile: $name"
		
		backup=$HOME/$name.backup
		linked=$HOME/$name

		[ -f $backup ] && ( rm -rf $backup )
		[ -f $linked ] && ( mv $linked $backup )
		ln -s $f $linked
	fi
done

source ~/.bash_profile