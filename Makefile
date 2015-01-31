bold=`tput bold`
normal=`tput sgr0`

all:
	@echo "Run ${bold}'make install'${normal}."

install:
	bash install.sh
	
.PHONY: all install
