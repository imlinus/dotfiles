PREFIX?=/usr/X11R6
CFLAGS?=-Os -pedantic -Wall

all:
	$(CC) $(CFLAGS) -I$(PREFIX)/include window-manager.c -L$(PREFIX)/lib -lX11 -o window-manager

install:
	cp window-manager /usr/bin/window-manager

clean:
	rm -f window-manager