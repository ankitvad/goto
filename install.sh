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
	. ~/.bashrc
fi
#Creating new bash_profile file, if doesnt exist. if exists, the appending
#value. Some people on MAC don't use .bashrc.
if [ -f "$BASH_FILE2" ]; then
	echo 'export PATH=$PATH:~/.local/bin/' >> "$BASH_FILE2"
	echo 'alias goto=". goto"' >> "$BASH_FILE2"
	echo -e "Added Stuff in .bash_profile"
	. ~/.bash_profile
fi
echo -e "Do you wish to install the 'man' page for goto?"
echo -e "root/sudo privilege might be required? (yes/no)"
read choice
if [ "$choice" = "yes" ] || [ "$choice" = "y" ] ; then
	sudo cp "$(pwd)/man_page/goto.1" /usr/share/man/man1/
	#This should work. Trying.
	sudo cp "$(pwd)/man_page/goto.1" /usr/share/man/
	#I was just notified by 'Drew Mills' on Google+ that the command
	#'mandb' does not exist for a MAC system. Since, this file
	#copies the man-page in the proper location anyways, it seems
	#that a MAC system is able to pick up the new man page automatically.
	#No Manual 'mandb' required. Hence adding a condition to check for
	#'mandb's existence, and then executing it. So, that errors don't creep up.
	#Thank's Drew. :)
	#Checking for mandb :
	if type "mandb" > /dev/null 2>&1; then
		sudo mandb	
	fi	
	echo -e " "
	echo -e "Done. Added man page. To access: 'man goto'"	
else
	echo -e "man page not installed."
	echo -e "To manually install copy '/man_page/goto.1' to the man page location."
fi
exit 0
