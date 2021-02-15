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
	if [ -e DEEPTHOUGHT ] ; then
		rm -f DEEPTHOUGHT
	fi
}

function	init() {
	clean_before_launch
	mkdir src user_output
}
