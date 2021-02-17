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
#		printf "\$>${1} found.\n\n" >> ${current_dir}/DEEPTHOUGHT
		return 0
	else
		printf "\$>${1} is missing. Skipping...\n\n" >> ${current_dir}/DEEPTHOUGHT
echo $1
		return 1
	fi
}
