#!/bin/bash

# ############################################################################ #
#                                                                              #
#    pataugeoire-tester                                                        #
#    v. 1.0                                                                    #
#                                                                              #
#    choices.sh                                     by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	choices() {
printf "${YELLOW}===============================================================================
                                      Menu
===============================================================================
	0)  All;
	1)  Test shell00;
	2)  Test shell01;

	10) Test c00;
	11) Test c01;
	12) Test c02;
	13) Test c03;
\n${NOCOLOR}Type option (default: 0): "
	read
		if [ "$REPLY" == "0" ] || [ "$REPLY" == "" ]; then
			run_all
		elif [ "$REPLY" == "1" ]; then
			shell00
		elif [ "$REPLY" == "2" ]; then
			shell01
		elif [ "$REPLY" == "10" ]; then
			c00	
		elif [ "$REPLY" == "11" ]; then
			c01
		elif [ "$REPLY" == "12" ]; then
			c02
		elif [ "$REPLY" == "13" ]; then
			c03
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
	c03
}
