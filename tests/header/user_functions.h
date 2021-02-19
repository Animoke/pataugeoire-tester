/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   user_functions.h                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gpatingr <gpatingr@sudent.42.fr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/19 00:06:00 by gpatingr          #+#    #+#             */
/*   Updated: 2021/02/19 16:00:14 by gpatingr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef _USER_FUNCTIONS_H_
# define _USER_FUNCTIONS_H_

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <strings.h>

// c00 functions
void	ft_putchar(char c);
void	ft_print_alphabet(void);
void	ft_print_reverse_alphabet(void);
void	ft_print_numbers(void);
void	ft_is_negative(int n);
void	ft_print_comb(void);
void	ft_print_comb2(void);
void	ft_putnbr(int nb);

// c01
void	ft_ft(int *nbr);
void	ft_ultimate_ft(int *********nbr);
void	ft_swap(int *a, int *b);
void	ft_div_mod(int a, int b, int *div, int *mod);
void	ft_ultimate_div_mod(int *a, int *b);
void	ft_putstr(char *str);

#endif
