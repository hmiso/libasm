# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hmiso <hmiso@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/18 20:15:21 by hmiso             #+#    #+#              #
#    Updated: 2020/10/04 13:05:34 by hmiso            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libasm.a
OBJ_FILES = ft_strlen.o \
			ft_strcpy.o \
			ft_strcmp.o \
			ft_strdup.o \
			ft_write.o \
			ft_read.o

CFLAGS = -f macho64

all: $(NAME)

$(NAME): $(OBJ_FILES)
	ar rc $(NAME) $(OBJ_FILES) $^
	ranlib $(NAME)

%.o: %.s 
	nasm -s $(CFLAGS) -o $@ $<

clean:
	rm -f $(OBJ_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all
