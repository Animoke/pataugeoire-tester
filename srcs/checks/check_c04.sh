#!/bin/bash

# ############################################################################ #
#                                                                              #
#    pataugeoire-tester                                                        #
#    v. 1.0                                                                    #
#                                                                              #
#    check_c04.sh                                   by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	check_c04_ex00() {
	usr_out=$current_dir/user_output/c04/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex00/ft_strlen.c" ; then
		msg_nothing_turned_in "ex00/ft_strlen.c"
		return
	fi
	check_norme "src/c04/ex00/ft_strlen.c"
	check_prototype "int" "ft_strlen" "src/c04/ex00/ft_strlen.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex00/main.c ./src/c04/ex00/ft_strlen.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex00/ft_strlen.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "10") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex00/ft_strlen.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "12") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex00/ft_strlen.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "36") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	local USER_OUTPUT=$(./user.out "")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex00/ft_strlen.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c04_ex01() {
	usr_out=$current_dir/user_output/c04/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex01/ft_putstr.c" ; then
		msg_nothing_turned_in "ex01/ft_putstr.c"
		return
	fi
	check_norme "src/c04/ex01/ft_putstr.c"
	check_prototype "void" "ft_putstr" "src/c04/ex01/ft_putstr.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex01/main.c ./src/c04/ex01/ft_putstr.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex01/ft_putstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST") <(echo "$USER_OUTPUT") >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex01/ft_putstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST") <(echo "$USER_OUTPUT") >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex01/ft_putstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST") <(echo "$USER_OUTPUT") >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	local TEST="a hot cup of coffe is really enjoyable when your house is about to get destroyed by workers, especially if they were going to build a highway right on its location."
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex01/ft_putstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST") <(echo "$USER_OUTPUT") >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c04_ex02() {
	usr_out=$current_dir/user_output/c04/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex02/ft_putnbr.c" ; then
		msg_nothing_turned_in "ex02/ft_putnbr.c"
		return
	fi
	check_norme "src/c04/ex02/ft_putnbr.c"
	check_prototype "void" "ft_putnbr" "src/c04/ex02/ft_putnbr.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex02/main.c ./src/c04/ex02/ft_putnbr.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "123456789" ] ; then
		printf "${uni_success}ex02/ft_putnbr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0123456789") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "0" ] ; then
		printf "${uni_success}ex02/ft_putnbr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="2147483647"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex02/ft_putnbr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "${RED}Your ft_putstr does not work with INT_MAX\n${NOCOLOR}"
		diff <(echo "$TEST") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "Your ft_putstr does not work with INT_MAX\n" >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c04_ex03() {
	usr_out=$current_dir/user_output/c04/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex03/ft_strncat.c" ; then
		msg_nothing_turned_in "ex03/ft_strncat.c"
		return
	fi
	check_norme "src/c04/ex03/ft_strncat.c"
	check_prototype "char" "\*ft_strncat" "src/c04/ex03/ft_strncat.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex03/main.c ./src/c04/ex03/ft_strncat.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_strncat.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST" "8")
	if [ "$USER_OUTPUT" == "0123456701234567" ] ; then
		printf "${uni_success}ex03/ft_strncat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_strncat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0123456701234567") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST" "5")
	if [ "$USER_OUTPUT" == "hey ihey i" ] ; then
		printf "${uni_success}ex03/ft_strncat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_strncat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "hey ihey i") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST" "28")
	if [ "$USER_OUTPUT" == "So long, and thanks for all So long, and thanks for all " ] ; then
		printf "${uni_success}ex03/ft_strncat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_strncat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST$TEST") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c04_ex04() {
	usr_out=$current_dir/user_output/c04/ex04
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex04:\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex04/ft_strstr.c" ; then
		msg_nothing_turned_in "ex04/ft_strstr.c"
		return
	fi
	check_norme "src/c04/ex04/ft_strstr.c"
	check_prototype "char" "\*ft_strstr" "src/c04/ex04/ft_strstr.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex04/main.c ./src/c04/ex04/ft_strstr.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="0123456789"
	local TEST2="7"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex04/ft_strstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "789 789") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="hey i'm dave"
	local TEST2="7"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ "$USER_OUTPUT" == "ok" ] || [ "$USER_OUTPUT" == "" ] ; then
		printf "${uni_success}ex04/ft_strstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="So long, and thanks for all the fish"
	local TEST2=" "
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex04/ft_strstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo " long, and thanks for all the fish long, and thanks for all the fish") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="hot chocolate milk"
	local TEST2="late"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex04/ft_strstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "late milk late milk") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c04_ex05() {
	usr_out=$current_dir/user_output/c04/ex05
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex05:\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex05/ft_strlcat.c" ; then
		msg_nothing_turned_in "ex05/ft_strlcat.c"
		return
	fi
	check_norme "src/c04/ex05/ft_strlcat.c"
	check_prototype "unsigned int" "ft_strlcat" "src/c04/ex05/ft_strlcat.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex05/main.c ./src/c04/ex05/ft_strlcat.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST" "3")
	if [ "$USER_OUTPUT" == "10 012" ] ; then
		printf "${uni_success}ex05/ft_strlcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "10 012") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST" "12")
	if [ "$USER_OUTPUT" == "12 hey i'm dave" ] ; then
		printf "${uni_success}ex05/ft_strlcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "12 hey i'm dave") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST" "42")
	if [ "$USER_OUTPUT" == "36 So long, and thanks for all the fish" ] ; then
		printf "${uni_success}ex05/ft_strlcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "36 So long, and thanks for all the fish") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hot chocolate milk"
	local USER_OUTPUT=$(./user.out "$TEST" "0")
	if [ "$USER_OUTPUT" == "18 " ] ; then
		printf "${uni_success}ex05/ft_strlcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "18") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	c04() {
	mkdir src/c04 user_output/c04
	print_current_part "c04"
	cp -r $src_path/c04/ex* ./src/c04  # copying src files
	
	check_c04_ex00
	check_c04_ex01
	check_c04_ex02
#	check_c04_ex03
#	check_c04_ex04
#	check_c04_ex05
	rm -rf $current_dir/user_output/c04 $current_dir/src/c04
	printf "${GREEN}\nAll c04 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c04 tests are done.\n" >> DEEPTHOUGHT
}
