CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

.PHONY: test clean

exec: main.cpp
	g++ $(CFLAGS) -o space_shooter main.cpp $(LDFLAGS)

test: exec
	./space_shooter

clean:
	rm -f space_shooter
