#!/bin/bash

# ############################################################################ #
#                                                                              #
#    piscine-ultimate-tester                                                   #
#    v. 1.0                                                                    #
#                                                                              #
#    gfx.sh                                         by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	print_welcome() {
	printf "${YELLOW}
===============================================================================
###############################################################################
########################### piscine-ultimate-tester ###########################
###############################################################################
=================================❯ by animoke ❮================================
=======================================================================❯ ${RED}${BOLD}${UNDERLINE}${VERSION}${NOCOLOR}\n\n\n"
}

function	print_current_part() {
	printf "${PURPLE}${BOLD}${UNDERLINE}Testing ${1}:${NOCOLOR}\n\n"

}
