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

function	check_norme() {
	NORME=$(ruby ~/.norminette/norminette.rb -R CheckForbiddenSourceHeader $1)
	NORME_RES=$(echo $NORME | wc -l)
	FILE_NB=$(find $2 -type f -o -type d | wc -l | bc)
	if [ "$NORME_RES" == "$FILE_NB" ] ; then
		printf "norme ok\n"
	else
		printf "norme ko\n"
	fi
}

function	check_prototype() {
	PROTOTYPE=$(grep -e)
}
