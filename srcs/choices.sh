#!/bin/bash

# ############################################################################ #
#                                                                              #
#    pateaugeoire-tester                                                       #
#    v. 1.0                                                                    #
#                                                                              #
#    choices.sh                                     by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	choices() {
printf "${YELLOW}===============================================================================
                                      Menu
===============================================================================
	0) All;
	1) Test shell00;
	2) Test shell01;

	3) Test c00;
	4) Test c01;
	5) Test c02;\n\n${NOCOLOR}Type option (default: 0): "
	read
		if [ "$REPLY" == "0" ] || [ "$REPLY" == "" ]; then
			run_all
		elif [ "$REPLY" == "1" ]; then
			shell00
		elif [ "$REPLY" == "2" ]; then
			shell01
		elif [ "$REPLY" == "3" ]; then
			c00	
		elif [ "$REPLY" == "4" ]; then
			c01
		elif [ "$REPLY" == "5" ]; then
			c02
		else
			printf "${RED}===> Invalid option: $REPLY <===\n${NOCOLOR}"
	fi
	printf "\n"
}

function	run_all() {
	shell00
	shell01
	c00
	c01
	c02
}
