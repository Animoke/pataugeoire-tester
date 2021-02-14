#!/bin/bash

# ############################################################################ #
#                                                                              #
#    piscine-ultimate-tester                                                   #
#    v. 1.0                                                                    #
#                                                                              #
#    check_file.sh                                  by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	file_exists() {
	if [ -e "$1" ] ; then
		printf "${uni_sep}${1} found.\n" >> ${current_dir}/DEEPTHOUGHT
		return 0
	else
		printf "${uni_sep}${1} is missing.\n" >> ${current_dir}/DEEPTHOUGHT
		return 1
	fi
}
