CC  := gcc
OBJ := visualizer.o stdin.o cubically/src/rubiks.o

override CFLAGS += -g -lm -O3 -DVISUALIZER

visualizer := visualizer

all: $(visualizer)

$(visualizer): $(OBJ)
	$(CC) $(OBJ) -o $(visualizer) $(CFLAGS)

clean:
	rm -f $(OBJ)
