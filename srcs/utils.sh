#!/bin/bash

# ############################################################################ #
#                                                                              #
#    pateaugeoire-tester                                                       #
#    v. 1.0                                                                    #
#                                                                              #
#    utils.sh                                       by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	compile_tests() {
	local MAIN=$1
	local USR_SRC=$2
	
	# Compiling
	printf " ${BLUE}${BOLD}Compiling $USR_SRC ${NOCOLOR}"
	printf "\$> gcc -Wall -Werror -Wextra $MAIN $USR_SRC -o $usr_out\n" >> DEEPTHOUGHT
	gcc -Wall -Werror -Wextra $MAIN $USR_SRC -o $usr_out/user.out 2>> DEEPTHOUGHT
	if [ ! -e $usr_out/user.out ] ; then
		printf "${uni_fail}${NOCOLOR}\n"
		printf "Compilation failed ${diff_ko}\n" >> DEEPTHOUGHT
		IS_COMPILED=1
	else
		printf "${uni_success}${NOCOLOR}\n"
		IS_COMPILED=0
	fi
}

function	cleanup() {
	rm -rf src
	rm -rf user_output
}
