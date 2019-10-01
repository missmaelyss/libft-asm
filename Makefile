NAME = libfts.a

CC = nasm

FLAGS = -fmacho64

INC = 

SRC_NAME =	part_1/ft_bzero.s \
			part_1/ft_isalnum.s \
			part_1/ft_isalpha.s \
			part_1/ft_isascii.s \
			part_1/ft_isdigit.s \
			part_1/ft_isprint.s \
			part_1/ft_puts.s \
			part_1/ft_strcat.s \
			part_1/ft_tolower.s \
			part_1/ft_toupper.s \
			part_2/ft_memcpy.s \
			part_2/ft_memset.s \
			part_2/ft_strdup.s \
			part_2/ft_strlen.s \
			part_3/ft_cat.s \
			bonus/ft_islower.s \
			bonus/ft_isupper.s

SRC_PATH = src/

SRC = $(addprefix $(SRC_PATH), $(SRC_NAME))

OBJ_PATH = obj/

OBJ_NAME = $(SRC_NAME:.s=.o)

OBJ = $(addprefix $(OBJ_PATH),$(OBJ_NAME))

all : $(NAME)

$(NAME): $(OBJ_PATH) $(OBJ)
	ar rc $@ $(OBJ)
	@echo "\x1b[32;01m$@ SUCCESSFULLY CREATED !\x1b[32;00m"

$(OBJ_PATH):
	@mkdir -p $@/part_1
	@mkdir -p $@/part_2
	@mkdir -p $@/part_3
	@mkdir -p $@/bonus

$(OBJ_PATH)%.o: $(SRC_PATH)%.s
	$(CC) $(INC) $(FLAGS) -o $@ $<

clean:
	@printf "%-50s" "deleting objects..." 
	@rm -rf $(OBJ_PATH)
	@printf "\033[1;32m[OK]\033[0m\n"

fclean: clean
	@printf "%-50s" "deleting executable..." 
	@rm -rf $(NAME)
	@printf "\033[1;32m[OK]\033[0m\n"

re: fclean all
