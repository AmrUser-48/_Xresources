#!/bin/env zsh
#copy incl files
if [ -f ~/.config/Xresources ] 
then
		mv -v ~/.config/Xresources ~/.config/"Xresources.BAK.$(date -u +"%d-%h-%Y %r")"
		cp -vr .config/Xresources -t ~/.config/
else
		mkdir -p ~/.config/Xresources
		cp -vr .config/Xresources -t ~/.config/
fi

#copy & bacup config
if [ -f ~/.Xresources ]
then
		mv -v ~/.Xresources ~/".Xresources.BAK.$(date -u +"%d-%h-%Y %r")"
		cp -v .Xresources ~/
else
		cp -v .Xresources ~/
fi
