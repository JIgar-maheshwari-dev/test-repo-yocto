CC := ${CC}
CFLAGS := ${CFLAGS}

SRC := $(wildcard ./src/*.c) 

INC := -I./header/

TARGET := calculator

all: $(TARGET)

$(TARGET):$(SRC)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@ $(INC) -Wl,--hash-style=gnu

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 ${TARGET} ${DESTDIR}${BINDIR}

clean:
	rm -f $(TARGET)
