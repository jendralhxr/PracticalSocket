# project root
PROJECT_ROOT = ../..

# paths 
INSTALL = $(PROJECT_ROOT)/lib
INCLUDE = $(PROJECT_ROOT)/include

# files 
FILE       = PracticalSocket
LIBFILE    = $(FILE).a
SOURCEFILE = $(FILE).cpp
HEADERFILE = $(FILE).h
OBJECTFILE = $(FILE).o

# compiler 
CXX = g++
CXXFLAGS = -std=c++11 -Wall -g

# archive
ARC = ar
ARCFLAGS = rcs

all: $(LIBFILE)
	cp $(LIBFILE)    $(INSTALL)
	cp $(HEADERFILE) $(INCLUDE)

$(OBJECTFILE): $(SOURCEFILE) 
	$(CXX) $(CXXFLAGS) $(INC) -c $(SOURCEFILE) $(LIB)

$(LIBFILE): $(OBJECTFILE)
	$(ARC) $(ARCFLAGS) $(LIBFILE) $(OBJECTFILE) 

clean: 
	rm -f *.o *.so *.a

clean_all: 
	rm -f *.o *.so *.a 
	rm -f $(INSTALL)/$(LIBFILE)
	rm -f $(INCLUDE)/$(HEADERFILE)
