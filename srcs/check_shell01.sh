#!/bin/bash

# ############################################################################ #
#                                                                              #
#    piscine-ultimate-tester                                                   #
#    v. 1.0                                                                    #
#                                                                              #
#    check_shell01.sh                               by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	check_sh01_ex01() {
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	if ! file_exists "src/shell01/ex01/print_groups.sh" ; then
		msg_nothing_turned_in "ex01/print_groups.sh"
		return
	fi
	usr_out=$current_dir/user_output/shell01/ex01
	mkdir $usr_out
	cd src/shell01/ex01
	bash print_groups.sh | tr -d \\n > $usr_out/print_groups
	id -Gn $FT_USER | tr ' ' ',' | tr -d \\n > $usr_out/res_out
	DIFF=$(diff -q $usr_out/print_groups $usr_out/res_out) 
	if [ "$DIFF" != "" ] ; then
		printf "${uni_fail}ex01/print_groups.sh${diff_ko}${NOCOLOR}\n"
	else
		printf "${uni_success}ex01/print_groups.sh${diff_ok}${NOCOLOR}\n"
	fi
	cd $current_dir
}

function	check_sh01_ex02() {
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	if ! file_exists "src/shell01/ex02/find_sh.sh" ; then
		msg_nothing_turned_in "ex02/find_sh.sh"
		return
	fi
	usr_out=$current_dir/user_output/shell01/ex02
	mkdir $usr_out
	cd src/shell01/ex02
	bash find_sh.sh | tr -d \\n > $usr_out/find_sh_out
	find . -type f -name "*.sh" | sed 's/\.sh//g' | tr -d './' | sort -d > $usr_out/res_out
	DIFF=$(diff -q $usr_out/print_groups $usr_out/res_out) 
	if [ "$DIFF" != "" ] ; then
		printf "${uni_fail}ex01/print_groups.sh${diff_ko}${NOCOLOR}\n"
	else
		printf "${uni_success}ex01/print_groups.sh${diff_ok}${NOCOLOR}\n"
	fi
}

function	shell01() {
	mkdir src/shell01 user_output/shell01
	print_current_part "shell01"
	cp -r $src_path/shell01/ex* ./src/shell01  # copying src files
	
	check_sh01_ex01
#	check_sh01_ex02
#	check_sh01_ex03
#	check_sh01_ex04
#	check_sh01_ex05
#	check_sh01_ex06
#	check_sh01_ex07
#	check_sh01_ex08
#	check_sh01_ex01

	rm -rf src user_output
}
