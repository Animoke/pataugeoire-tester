#!/bin/bash

# ############################################################################ #
#                                                                              #
#    piscine-ultimate-tester                                                   #
#    v. 1.0                                                                    #
#                                                                              #
#    check_shell00.sh                               by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	check_ex00() {
	if ! file_exists "src/shell00/ex00/z" ; then
		msg_nothing_turned_in "ex00/z"
		return
	fi
	if ! diff -q src/shell00/ex00/z tests/shell00/ex00/z ; then
		printf "${uni_fail}ex00/z${diff_ko}${NOCOLOR}\n"
	else
		printf "${uni_success}ex00/z${diff_ok}${NOCOLOR}\n"
	fi
}

function	check_ex01() {
	if ! file_exists "src/shell00/ex01/testShell00.tar" ; then
		msg_nothing_turned_in "ex01/testShell00.tar"
		return
	fi
	
}

function	shell00() {
	mkdir src/shell00
	print_current_part "shell00"
	cp -r $src_path/shell00/ex* ./src/shell00  # copying src files
	check_ex00
}
