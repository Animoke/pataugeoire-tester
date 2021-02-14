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


function	shell00() {
	mkdir src/shell00
	cp -r $src_path/shell00/ex* ./src/shell00  # copying src files

	# Testing ex00
	if ! diff -q src/shell00/ex00/z tests/shell00/ex00 ; then
		printf "ex00 no-good\n"
	else
		printf "ex00 good\n"
	fi

}

function	cleanup() {
	rm -rf src/*
}

shell00
cleanup
