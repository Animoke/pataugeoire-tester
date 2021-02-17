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
source	srcs/checks/check_file.sh
source	srcs/checks/check_shell00.sh
source	srcs/checks/check_shell01.sh
source	srcs/checks/check_c00.sh

function	cleanup() {
	rm -rf src user_output
}

trap cleanup EXIT

case $1 in
	--help | -h) 
		man srcs/help1 ;;
	--shell00 | -sh00) init ; shell00 ;;
	--shell01 | -sh01) init ; shell01 ;;
	--c00 | -c00) init ; c00 ;;
	-c) ;;
	*)
#		man srcs/help ;;
		init ; shell00 ; shell01 ;; 
esac

rm -rf src user_output 
printf "${GREEN}${BOLD}\n\nThank you for using pateaugeoire!\n${NOCOLOR}"
printf "\nThank you for using pateaugeoire!\n" >> DEEPTHOUGHT


#shell00



cleanup
