#!/bin/bash
INSTALL=~/.local/bin
BASH_FILE=~/.bashrc
bold=`tput bold`
normal=`tput sgr0`
mkdir -p "$INSTALL"
cp goto "$INSTALL"
echo 'export PATH=$PATH:/home/ankitvad/.local/bin/' >> "$BASH_FILE"
echo 'alias goto=". goto"' >> "$BASH_FILE"
echo -e "Added Stuff in .bashrc"
. ~/.bashrc
exit 0