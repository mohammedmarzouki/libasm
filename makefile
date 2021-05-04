# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmarzouk <mmarzouk@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/04 13:50:34 by mmarzouk          #+#    #+#              #
#    Updated: 2021/05/04 13:55:42 by mmarzouk         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libasm.a
SRCS=ft_read.s ft_strcmp.s ft_strlen.s ft_strcpy.s ft_strdup.s ft_write.s
OBJS = $(SRCS:.s=.o)

%.o: %.s
	@nasm -f macho64 -o $@ $<

all: $(NAME)

$(NAME): $(SRCS) $(OBJS)
	@ar rc $(NAME) $(OBJS)


clean:
	@rm -f $(OBJS)

fclean: clean
	@rm -f $(NAME)

re: fclean all