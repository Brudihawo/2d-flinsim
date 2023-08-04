CC = clang

CFLAGS = -I./vendor/la/src/

.DEFAULT_GOAL=main

la:
	make -C ./vendor/la -j$(nproc)

deps: la

main: deps
	$(CC) $(CFLAGS) src/main.c ./vendor/la/src/la.a -o main
