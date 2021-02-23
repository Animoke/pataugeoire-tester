#!/bin/bash

# ############################################################################ #
#                                                                              #
#    pataugeoire-tester                                                        #
#    v. 1.0                                                                    #
#                                                                              #
#    check_c07.sh                                   by Animoke (animoke.dev)   #
#                                                                              #
# ############################################################################ #

function	check_c07_ex00() {
	usr_out=$current_dir/user_output/c07/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex00/ft_strdup.c" ; then
		msg_nothing_turned_in "ex00/ft_strdup.c"
		return
	fi
	check_norme "src/c07/ex00/ft_strdup.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c07/ex00/main.c ./src/c07/ex00/ft_strdup.c 
	check_prototype "char" "\*ft_strdup" "src/c07/ex00/ft_strdup.c"
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_strdup.c\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local TEST=("hello" "hi i'm dave" "So long, and thanks for all the fish" "0123456789")
	local i=0
	while [ $i -le 3 ]; do
		local USER_OUTPUT=$(./user.out ${TEST[$i]})
		if [ "$USER_OUTPUT" == "${TEST[$i]} ${TEST[$i]}" ] ; then
			printf "${uni_success}ex00/ft_strdup.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex00/ft_strdup.c\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "${TEST[$i]} ${TEST[$i]}") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		(( i++ ))
	done
	cd $current_dir
}

function	check_c07_ex01() {
	usr_out=$current_dir/user_output/c07/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex01/ft_print_params.c" ; then
		msg_nothing_turned_in "ex01/ft_print_params.c"
		return
	fi
	check_norme "src/c07/ex01/ft_print_params.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests "" ./src/c07/ex01/ft_print_params.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_print_params.c\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out "first param" "second" "3rd")
	local RES=$(printf "first param\nsecond\n3rd\n")
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex01/ft_print_params.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_print_params.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c07_ex02() {
	usr_out=$current_dir/user_output/c07/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex02/ft_rev_params.c" ; then
		msg_nothing_turned_in "ex02/ft_rev_params.c"
		return
	fi
	check_norme "src/c07/ex02/ft_rev_params.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests "" ./src/c07/ex02/ft_rev_params.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_rev_params.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out "first param" "second" "3rd")
	local RES=$(printf "3rd\nsecond\nfirst param\n")
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex02/ft_rev_params.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_rev_params.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c07_ex03() {
	usr_out=$current_dir/user_output/c07/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex03/ft_sort_params.c" ; then
		msg_nothing_turned_in "ex03/ft_sort_params.c"
		return
	fi
	check_norme "src/c07/ex03/ft_sort_params.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests "" ./src/c07/ex03/ft_sort_params.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_sort_params.c\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out "first param" "second" "3rd" "4rd" "AAA" "ABA" "AAB" "BAA" "aab")
	local RES=$(printf "3rd\n4rd\nAAA\nAAB\nABA\nBAA\naab\nfirst param\nsecond\n")
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex03/ft_sort_params.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_sort_params.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	c07() {
	mkdir src/c07 user_output/c07
	print_current_part "c07"
	cp -r $src_path/c07/ex* ./src/c07  # copying src files
	
	check_c07_ex00
	check_c07_ex01
	check_c07_ex02
	check_c07_ex03

	rm -rf $current_dir/user_output/c07 $current_dir/src/c07
	printf "${GREEN}\nAll c07 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c07 tests are done.\n" >> DEEPTHOUGHT
}
