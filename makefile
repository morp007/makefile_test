# компилятор
CC = g++

# флаги
CXXFLAGS = -O2 -std=c++14

all: main.o helper.o
	$(CC) -o hello.exe main.o helper.o

main.o: main.cpp
	$(CC) $(CXXFLAGS) -c main.cpp -o main.o

helper.o: helper.cpp
	$(CC) $(CXXFLAGS) -c helper.cpp -o helper.o

clean:
	del /Q hello.exe
	del /Q *.o

.PHONY: clean
