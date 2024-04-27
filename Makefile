CFLAGS = -Wno-implicit-function-declaration

all : hello

hello : main.o hello.o
	@echo "Linking and producing the hello file"
	gcc $(CFLAGS) main.o hello.o -o hello

main.o : main.c
	@echo "compiling the main file"
	gcc $(CFLAGS) -c main.c
	
hello.o : hello.c
	@echo "compiling the hello file"
	gcc $(CFLAGS) -c hello.c
	
clean : 
	@echo "removing everything but the source files.."
	rm main.o hello.o 
