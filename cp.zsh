#!/bin/env zsh
if [ ! -f ~/.config/Xresources ]
then
		mkdir -p ~/.config/Xresources
		cp .config/Xresources/* -t ~/.config/Xresources
else
		exit
fi

if [ -f ~/.Xresources ]
then
		mv ~/.Xresources ~/.Xresources.BAK_"$(date -u +"%d-%h-%Y %r")"
		cp .Xresources -t ~/
else
		cp .Xresources -t ~/
fi
