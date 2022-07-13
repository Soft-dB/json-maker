################################################################################
#
# json-maker
#
################################################################################

all: json-maker.a

json-maker.o: src/json-maker.c
	$(CC) $(CFLAGS) -Isrc/include -c -o $@ $<

json-maker.a: json-maker.o
	$(AR) rc $@ $<
	$(RM) $<
