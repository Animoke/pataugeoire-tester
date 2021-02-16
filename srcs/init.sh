#!/bin/bash

# ############################################################################ #
#                                                                              #
#    piscine-ultimate-tester                                                   #
#    v. 1.0                                                                    #
#                                                                              #
#    init.sh                                        by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	clean_before_launch() {
	if [ -e src ] ; then
		rm -rf src
	fi
	if [ -e user_output ] ; then
		rm -rf user_output
	fi
	if [ -e DEEPTHOUGHT ] ; then
		rm -f DEEPTHOUGHT
	fi
}

function	ask_username() {
	USERNAME=$(whoami)
	printf "Are you $USERNAME ? [Y/n] "
	read
	printf "\n"
	if [ "$REPLY" == "n" ] || [ "$REPLY" == "N" ] ; then
		printf "Enter the username of the piscineux being corrected: "
		read
		if [ "$REPLY" != "" ] ; then
			USERNAME=$REPLY
		fi
	fi
}

function	init() {
	clean_before_launch
	mkdir src user_output
	print_welcome
	ask_username
}

function	deepthought_init() {
	printf "\$> hostname\n" > DEEPTHOUGHT
	hostname >> DEEPTHOUGHT
	printf "\$> date\n" >> DEEPTHOUGHT
	date >> DEEPTHOUGHT
	printf "\$> gcc --version\n" >> DEEPTHOUGHT
	gcc --version | grep -e "gcc" >> DEEPTHOUGHT
	printf "\$> clang --version\n" >> DEEPTHOUGHT
	clang --version >> DEEPTHOUGHT
	printf "\nReady for testing\n" >> DEEPTHOUGHT
}
