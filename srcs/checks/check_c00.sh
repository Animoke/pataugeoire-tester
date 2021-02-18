#!/bin/bash

# ############################################################################ #
#                                                                              #
#    pateaugeoire-tester                                                       #
#    v. 1.0                                                                    #
#                                                                              #
#    check_c00.sh                                   by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	check_c00_ex00() {
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex00/ft_putchar.c" ; then
		msg_nothing_turned_in "ex00/ft_putchar.c"
		return
	fi
#	PROTOTYPE=$(grep -E "^$TYPE"$'\t{1,}'"$FUNC_NAME"'\([^)]+\)' src/c00/ex00/ft_putchar.c)
	check_norme "src/c00/ex00/ft_putchar.c"
	check_prototype "void" "ft_putchar" "src/c00/ex00/ft_putchar.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	if ! diff -q src/c00/ex00/z tests/c00/ex00/z ; then
		printf "${uni_fail}ex00/ft_putchar.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n" >> DEEPTHOUGHT
	else
		printf "${uni_success}ex00/ft_putchar.c${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> DEEPTHOUGHT
	fi
}

function	c00() {
	mkdir src/c00 user_output/c00
	print_current_part "c00"
	cp -r $src_path/c00/ex* ./src/c00  # copying src files
	printf "Testing c00:\n\n" >> DEEPTHOUGHT
	
	check_c00_ex00
#	check_sh00_ex01
#	check_sh00_ex02
#	check_sh00_ex03
#	check_sh00_ex04
#	check_sh00_ex05
#	check_sh00_ex06
#	check_sh00_ex07
#	check_sh00_ex08
#	check_sh00_ex09
	printf "${GREEN}\nAll c00 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c00 tests are done.\n" >> DEEPTHOUGHT
}
