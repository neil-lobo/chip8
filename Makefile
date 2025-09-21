b: build

build: out.exe

out.exe: $(shell find src -type f -name *.cpp)
	gcc -g src/main.cpp $(shell find src -type f -name *.cpp ! -path "src/main.cpp") -Iinclude/ -Wall -lstdc++ -o out.exe

run:
	out.exe

clean:
	rm -rf bin/
	mkdir bin/
