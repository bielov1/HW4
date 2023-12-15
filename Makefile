CXX=g++
CXXFLAGS= -std=c++11 -Wextra -Wall -pedantic

.PHONY: all

all: libcalculator.so main clean

main: main.cpp libcalculator.so
    $(CXX) $(CXXFLAGS) -o main main.cpp -L. -lcalculator

libcalculator.so: calculator.o
    $(CXX) -shared -o libcalculator.so calculator.o

calculator.o: calculator.cpp
    $(CXX) $(CXXFLAGS) -fPIC -c calculator.cpp

clean:
    rm -f *.o *.so
