CC := ${CC}
CFLAGS := ${CFLAGS}

SRC := $(wildcard ./*.c) 

TARGET := bbappend

all: $(TARGET)

$(TARGET):$(SRC)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@ $(INC) -Wl,--hash-style=gnu

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 ${TARGET} ${DESTDIR}${BINDIR}

clean:
	rm -f $(TARGET)

