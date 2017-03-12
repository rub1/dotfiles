#!/usr/bin/env bash

# Credits to https://github.com/nicknisi/dotfiles/blob/master/install/link.sh

DOTFILES=$HOME/dotfiles

# Green list checkmark
# Output: ✔ variabel
g_list() { echo  "  \033[1;32m✔ $1 \033[0m"; }

# Yellow list checkmark
# Output: ✔ variabel
y_list() { echo  "  \033[1;33m✔\033[0m $1"; }

# Red error x
# Output: ✖ Error: variabel
e_list() { echo "  \033[1;31m✖ Error: $1\033[0m"; }



echo "\nCreating symlinks"
echo "=============================="
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file '.symlink' )"
    if [ -e $target ]; then
        y_list "~${target#$HOME} already exists... Skipping."
    else
        g_list "Creating symlink for $file"
        ln -s $file $target
    fi
done



echo "\nInstalling nvim" 
echo "=============================="
if [ ! -d $HOME/.config ]; then
    g_list "Creating ~/.config"
    mkdir -p $HOME/.config
fi

if [ ! -d $HOME/.config/nvim ]; then
    g_list "Creating symlink for nvim"
    ln -s $DOTFILES/nvim $HOME/.config/nvim 
else
    y_list "~/.config/nvim already exists... Skipping."
fi



echo "\nInstalling Sublime Text" 
echo "=============================="
if [ ! -d  $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages ]; then
    g_list "Creating Sublimee Packages folder"
    mkdir -p $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages
fi

if [ ! -d $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ]; then
    g_list "Creating symlink for Sublime Text"
    ln -s $DOTFILES/sublime/User $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User  
else
    y_list "Sublime Text User folder already exists... Skipping."
fi



if [ -d $HOME/Dropbox/.auth ]; then
	echo "\nCreating symlinks for auth files in dropbox"
	echo "=============================="
	linkables=$( find -H "$HOME/Dropbox/.auth" -maxdepth 3 -name '*.symlink' )
	for file in $linkables ; do
		target="$HOME/.$( basename $file '.symlink' )"
		if [ -e $target ]; then
			y_list "~${target#$HOME} already exists... Skipping."
		else
			g_list "Creating symlink for $file"
			ln -s $file $target
		fi
	done
fi



echo "\nChecking if ZPlug is installed" 
echo "=============================="
if [ ! -d $HOME/.zplug ]; then
    e_list "ZPlug not found please install"
else
    y_list "ZPlug is installed"
fi
