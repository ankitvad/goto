#!/bin/bash
#Part of goto: cd replacement tool.
#By: Ankit Vadehra
#Contact: ankitvad[at]gmail[dot[com]
#License: Standard MIT License.
INSTALL=~/.local/bin
BASH_FILE=~/.bashrc
MAC_OS_BASH_FILE=~/.bash_profile
bold=`tput bold`
normal=`tput sgr0`
mkdir -p "$INSTALL"
cp goto "$INSTALL"

if [ -f $MAC_OS_BASH_FILE ]; then
  echo 'export PATH=$PATH:~/.local/bin/' >> "$MAC_OS_BASH_FILE"
  echo 'alias goto=". goto"' >> "$MAC_OS_BASH_FILE"
  echo -e "Added Stuff in .bash_profile"
  . ~/.bash_profile
else
  echo 'export PATH=$PATH:~/.local/bin/' >> "$BASH_FILE"
  echo 'alias goto=". goto"' >> "$BASH_FILE"
  echo -e "Added Stuff in .bashrc"
  . ~/.bashrc
fi
exit 0
