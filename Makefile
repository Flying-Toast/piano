CFLAGS = -Wall -Wextra -Wpedantic -std=c99

piano: piano.c
	cc $(CFLAGS) -o piano piano.c -lm -lao

README: piano.6
	man -l piano.6 | sed $$'s/.\b//g' >README
