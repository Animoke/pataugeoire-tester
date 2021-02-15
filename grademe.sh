#!/bin/bash
# ############################################################################ #
#                                                                              #
#    piscine-ultimate-tester                                                   #
#    v. 1.0                                                                    #
#                                                                              #
#    grademe.sh                                     by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

#AUTHOR: gpatingr (gpatingr@student.42.fr)
VERSION="v. 1.0"

src_path="../piscine" # set projects directory here
current_dir=$PWD

source	srcs/var/colors.sh
source	srcs/var/dspl.sh
source	srcs/var/env.sh
source	srcs/init.sh
source	srcs/msg.sh
source	srcs/gfx.sh
source	srcs/check_file.sh
source	srcs/check_shell00.sh

init
print_welcome

case $1 in
	--help | -h) 
		man srcs/help1 ;;
	--shell | -sh) if [ "$2" == "00" ] ; then
			shell00
		elif [ "$2" == "01" ] ; then
			shell01
		else
			shell00
			shell01
		fi ;;
	--shell00 | -sh00) shell00 ;;
	--shell01 | -sh01) shell01 ;;
	-c) ;;
	*)
		man srcs/help1 ;;
esac




#shell00

function	cleanup() {
	rm -rf src user_output
}

cleanup
