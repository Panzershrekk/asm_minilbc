##
## Makefile for asm_minilibc
## 
## Made by Guillaume CAUCHOIS
## Login   guillaume.cauchois@epitech.net>
## 
## Started on  Tue Jan 31 13:12:42 2017 Guillaume CAUCHOIS
## Last update Tue Jan 31 13:12:42 2017 Guillaume CAUCHOIS
##

include				source.mk

LIBASM			=   libasm.so

OBJ				=   $(SRC_MINILIB_C:.asm=.o)

ASM				=	nasm

LD				=	ld

ASMFLAGS		=   -f elf64

LDFLAGS			=	-shared

RM				=	@rm -vf

%.o : %.asm
					@echo "Generation of the $@ file..."
					@ $(ASM) $(ASMFLAGS) $<

${LIBASM}:			$(OBJ)
					@echo "Generation of dynamic library $LIBASM..."
					@$(LD) $(OBJ) $(LDFLAGS) -o $(LIBASM)

clean:				
					@echo "Deleting object files..."
					$(RM) $(OBJ)

fclean:				clean
					@echo "Deleting the binary $(LIBASM)"
					$(RM) $(LIBASM)

all:				${LIBASM}

re:					fclean all