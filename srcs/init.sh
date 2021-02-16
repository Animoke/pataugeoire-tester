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
	if [ "$USER_NAME" == "gpatingr" ] ; then
		printf "Welcome, you!\n\n"
		return
	fi
	printf "Are you $USER_NAME ? [Y/n] "
	read
	if [ "$REPLY" == "n" ] || [ "$REPLY" == "N" ] ; then
		printf "Enter the username of the piscineux being corrected: "
		read
		printf "\n"
		if [ "$REPLY" != "" ] ; then
			USER_NAME=$REPLY
		fi
	fi
}

function	init() {
	clean_before_launch
	mkdir src user_output
	print_welcome
# USER_NAME=gpatingr # so that i dont have to rewrite everytime
	ask_username
	deepthought_init
}

function	deepthought_init() {
	printf "\$> hostname; uname -msr\n" > DEEPTHOUGHT
	hostname >> DEEPTHOUGHT ; uname -msr >> DEEPTHOUGHT
	printf "\$> date\n" >> DEEPTHOUGHT
	date >> DEEPTHOUGHT
	printf "\$> gcc --version\n" >> DEEPTHOUGHT
	gcc --version | grep -e "gcc" >> DEEPTHOUGHT
	printf "\$> clang --version\n" >> DEEPTHOUGHT
	clang --version >> DEEPTHOUGHT
	printf "\$>echo \$USER_NAME\n" >> DEEPTHOUGHT
	echo $USER_NAME >> DEEPTHOUGHT
	printf "\nReady for testing\n\n" >> DEEPTHOUGHT
}
