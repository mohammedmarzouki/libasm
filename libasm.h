/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmarzouk <mmarzouk@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/03 16:11:15 by mmarzouk          #+#    #+#             */
/*   Updated: 2021/05/04 15:03:12 by mmarzouk         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef __LIBASM_H__
# define __LIBASM_H__

# include <stdlib.h>
# include <string.h>
# include <errno.h>
# include <unistd.h>
# include <fcntl.h>
# include <stdio.h>

int        ft_write(int fd, char *buff, size_t len);
int        ft_read(int fd, char *buff, size_t len);
size_t     ft_strlen(const char *str);
char       *ft_strcpy(char *dst, const char *src);
char       *ft_strdup(const char *s);
int        ft_strcmp(const char *s1, const char *s2);

#endif