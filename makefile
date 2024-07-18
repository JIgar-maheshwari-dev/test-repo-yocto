CC := ${CC}
CFLAGS := ${CFLAGS}

SRC := $(wildcard ./src/*.c) 

TARGET := calculator

all: $(TARGET)

$(TARGET):$(SRC)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@ -Wl,--hash-style=gnu

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 ${TARGET} ${DESTDIR}${BINDIR}

clean:
	rm -f $(TARGET)
