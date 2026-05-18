CPPFLAGS = -Wall -ggdb

MAIN = test
OBJ = $(MAIN).o HStack.o

$(MAIN).exe: $(OBJ)
	$(CXX) $(CPPFLAGS) $(OBJ) -o $(MAIN).exe

#$(MAIN).o: $(MAIN).cpp
#	$(CXX) $(CPPFLAGS) -c $(MAIN).cpp

$(MAIN).o HStack.o: HStack.hpp

run: $(MAIN).exe
	./$(MAIN).exe

clean:
	rm -f *.o *.exe
all: $(MAIN).exe run clean

.PHONY: all clean
