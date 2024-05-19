HEADER = libft.h
NAME = libft.a
CC = cc
CCA = ar rcs
CFLAGS = -Wall -Wextra -Werror
OFILES = ${SRCS:.c=.o}
BOFILES = ${BONI:.c=.o}
SRCS = 	ft_bzero.c\
		ft_isalnum.c\
		ft_isalpha.c\
		ft_isascii.c\
		ft_isdigit.c\
		ft_isprint.c\
		ft_memcpy.c\
		ft_memmove.c\
		ft_memset.c\
		ft_strchr.c\
		ft_strrchr.c\
		ft_strlcat.c\
		ft_strlcpy.c\
		ft_strlen.c\
		ft_strncmp.c\
		ft_strrchr.c\
		ft_tolower.c\
		ft_toupper.c\
		ft_memchr.c\
		ft_memcmp.c\
		ft_strnstr.c\
		ft_calloc.c\
		ft_atoi.c\
		ft_strdup.c\
		ft_substr.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_itoa.c\
		ft_strmapi.c\
		ft_striteri.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\
		ft_split.c\

BONI = 	ft_lstnew.c\
		ft_lstadd_front.c\
		ft_lstsize.c\
		ft_lstlast.c\
		ft_lstadd_back.c\
		ft_lstdelone.c\
		ft_lstclear.c\
		ft_lstiter.c\
		ft_lstmap.c

all: $(NAME)

$(NAME): $(OFILES)
	$(CCA) $(NAME) $(OFILES)

bonus: $(OFILES) $(BOFILES)
	$(CCA) $(NAME) $(OFILES) $(BOFILES)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ -I $(HEADER)

clean:
	@rm -f $(OFILES) $(BOFILES)
	@echo "ran clean"

fclean:
	@rm -f $(NAME) $(OFILES) $(BOFILES)
	@echo "ran fclean"

re: fclean all

.PHONY: clean all fclean re bonus
