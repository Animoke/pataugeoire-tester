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
	usr_out=$current_dir/user_output/c00/ex00
	mkdir $usr_out
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
	compile_tests ./tests/c00/ex00/main.c ./src/c00/ex00/ft_putchar.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_putchar.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES=" !\"#\$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\`abcdefghijklmnopqrstuvwxyz{|}~"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex00/ft_putchar.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex00/ft_putchar.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c00_ex01() {
	usr_out=$current_dir/user_output/c00/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex01/ft_print_alphabet.c" ; then
		msg_nothing_turned_in "ex01/ft_print_alphabet.c"
		return
	fi
	check_norme "src/c00/ex01/ft_print_alphabet.c"
	check_prototype "void" "ft_print_alphabet" "src/c00/ex01/ft_print_alphabet.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex01/main.c ./src/c00/ex01/ft_print_alphabet.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_print_alphabet.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="abcdefghijklmnopqrstuvwxyz"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex01/ft_print_alphabet.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex01/ft_print_alphabet\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c00_ex02() {
	usr_out=$current_dir/user_output/c00/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex02/ft_print_reverse_alphabet.c" ; then
		msg_nothing_turned_in "ex02/ft_print_reverse_alphabet.c"
		return
	fi
	check_norme "src/c00/ex02/ft_print_reverse_alphabet.c"
	check_prototype "void" "ft_print_reverse_alphabet" "src/c00/ex02/ft_print_reverse_alphabet.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex02/main.c ./src/c00/ex02/ft_print_reverse_alphabet.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_print_reverse_alphabet.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="zyxwvutsrqponmlkjihgfedcba"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex02/ft_print_reverse_alphabet.c${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/ft_print_reverse_alphabet${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c00_ex03() {
	usr_out=$current_dir/user_output/c00/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex03/ft_print_numbers.c" ; then
		msg_nothing_turned_in "ex03/ft_print_numbers.c"
		return
	fi
	check_norme "src/c00/ex03/ft_print_numbers.c"
	check_prototype "void" "ft_print_numbers" "src/c00/ex03/ft_print_numbers.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex03/main.c ./src/c00/ex03/ft_print_numbers.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_print_numbers.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="0123456789"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex03/ft_print_numbers.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/ft_print_numbers\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}


function	c00() {
	mkdir src/c00 user_output/c00
	print_current_part "c00"
	cp -r $src_path/c00/ex* ./src/c00  # copying src files
	printf "Testing c00:\n\n" >> DEEPTHOUGHT
	
	check_c00_ex00
	check_c00_ex01
	check_c00_ex02
	check_c00_ex03
#	check_sh00_ex04
#	check_sh00_ex05
#	check_sh00_ex06
#	check_sh00_ex07
#	check_sh00_ex08
#	check_sh00_ex09
	rm -rf user_output/c00 src/c00
	printf "${GREEN}\nAll c00 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c00 tests are done.\n" >> DEEPTHOUGHT
}
