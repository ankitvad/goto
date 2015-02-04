#!/bin/bash
#Part of goto: cd replacement tool.
#By: Ankit Vadehra
#Contact: ankitvad[at]gmail[dot[com]
#License: Standard MIT License.
INSTALL=~/.local/bin
BASH_FILE=~/.bashrc
#for those on bash_profile.
BASH_FILE2=~/.bash_profile
bold=`tput bold`
normal=`tput sgr0`
mkdir -p "$INSTALL"
cp goto "$INSTALL"
#For people using .bashrc.
if [ -f "$BASH_FILE" ]; then
	echo 'export PATH=$PATH:~/.local/bin/' >> "$BASH_FILE"
	echo 'alias goto=". goto"' >> "$BASH_FILE"
	echo -e "Added Stuff in .bashrc"
fi
#Creating new bash_profile file, if doesnt exist. if exists, the appending
#value. Some people on MAC don't use .bashrc.
if [ -f "$BASH_FILE2" ]; then
	echo 'export PATH=$PATH:~/.local/bin/' >> "$BASH_FILE2"
	echo 'alias goto=". goto"' >> "$BASH_FILE2"
	echo -e "Added Stuff in .bash_profile"
fi	
. ~/.bashrc
exit 0