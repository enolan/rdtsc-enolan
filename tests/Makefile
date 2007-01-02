GHC=ghc
GHCFLAGS=-fglasgow-exts -i../..

CC=gcc
CFLAGS=-O2

all: rdtsc_haskell rdtsc_c

rdtsc_haskell: TestRdtsc.hs
	$(GHC) $(GHCFLAGS) --make -o $@ $<

rdtsc_c: test_rdtsc.c rdtsc.o
	$(CC) $(CFLAGS) -o $@ -I../Rdtsc test_rdtsc.c rdtsc.o

rdtsc.o: ../Rdtsc/rdtsc.c ../Rdtsc/rdtsc.h
	$(CC) $(CFLAGS) -c -I../Rdtsc $<

clean:
	rm -f *.o *.hi

really-clean: clean
	rm -f rdtsc_haskell rdtsc_c
