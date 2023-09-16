NAME = fetch
SRCS = main.c
SRC_DIR = src/

OBJS = $(SRCS:%.c=$(SRC_DIR)%.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	rm $(NAME)
