/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmarzouk <mmarzouk@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/03 16:11:08 by mmarzouk          #+#    #+#             */
/*   Updated: 2021/05/04 15:39:55 by mmarzouk         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void test_write(void)
{
    ft_write(1,"ABC\n",4);
    printf("%s\n",strerror(errno));
}
void test_read(void)
{
    char buff[5];
    
    buff[4] = 0;
    ft_read(0,buff,4);
    printf("%s\n",buff);
    printf("%s\n",strerror(errno));
    
}
void test_strlen(void)
{
    printf("%zu\n",ft_strlen("123456789"));
}
void test_strcpy(void)
{
    char *name = "el fassi";
    char *dst = malloc(10);

    ft_strcpy(dst, name);
    printf("%s\n", dst);   
}

void test_strdup(void)
{
    char *s = "abcdef";
    ft_strdup(s);
    free(s);
}
void test_strcmp(void)
{
    char *s1 = "ytdytkytc";
    char *s2 = "mhgckgh";
    printf("%d\n",ft_strcmp(s1, s2));
}

int main()
{
    // test_write();
    // test_read();
    // test_strlen();
    // test_strcpy();
    // test_strdup();
    test_strcmp();
}