#--------------------------
# Global Build Varibales
#--------------------------

# Source Directory:
SRC=src/

# Executable
MAIN=FortranTesting

# CPP and Fortran compilers
CXX=g++
FORT=gfortran

# Library Flags
LDFLAGS=-Lsotest/lib

# Linker Flags
#LINKERFLAGS=-lsotestfunc -lc -lstdc++
LINKERFLAGS=-lSharedObjectdb -lc -lstdc++

# Include Flags
CINCLUDES=sotest/include/

# Source Files
CSRC=cwrapper.c
FSRC=main.f95

# Object Files
COBJECTS=$(CSRC:.c=.o)
FOBJECTS=$(FSRC:.f95=.o)

#--------------------------
# Specific Build Varibales
#--------------------------
# Debug Specific Directories
DOBJ=obj/Debug/
DEXE=bin/Debug/

# Release Specific Directories
ROBJ=obj/Release/
REXE=bin/Release/

# Debug Compiler flags
DCFLAGS=-Wall -g -std=c++11
DFFLAGS=-g

# Release Compiler flags
RCFLAGS=-O3
RFFLAGS=-O3

#-----------------
# Declare targets
#-----------------
.PHONY: debug cleandebug clean

#-----------------
# Build Release
#-----------------
all: $(REXE)$(MAIN)
	@echo Release Compiled

$(REXE)$(MAIN): $(ROBJ)$(COBJECTS) $(ROBJ)$(FOBJECTS)
	$(FORT) $(RFFLAGS) -o $@ $^ $(LDFLAGS) $(LINKERFLAGS)

# Compile all CPP files
$(ROBJ)$(COBJECTS):
	$(CXX) $(RCFLAGS) -c $(SRC)$(CSRC) -o $@ -I$(CINCLUDES)

# Compile all FORTRAN files
$(ROBJ)$(FOBJECTS):
	$(FORT) $(RFFLAGS) -c $(SRC)$(FSRC) -o $@

# Clean Rule
clean:
	$(RM) $(ROBJ)*.o *~ $(REXE)$(MAIN)

#-----------------
#  Build Debug
#-----------------
debug: $(DEXE)$(MAIN)
	@echo Debug Compiled

$(DEXE)$(MAIN): $(DOBJ)$(COBJECTS) $(DOBJ)$(FOBJECTS)
	$(FORT) $(DFFLAGS) -o $@ $^ $(LDFLAGS) $(LINKERFLAGS)

# Compile all CPP files
$(DOBJ)$(COBJECTS):
	$(CXX) $(DCFLAGS) -c $(SRC)$(CSRC) -o $@ -I$(CINCLUDES)
	
# Compile all FORTRAN files
$(DOBJ)$(FOBJECTS):
	$(FORT) $(DFFLAGS) -c $(SRC)$(FSRC) -o $@

# Clean Rule
cleandebug:
	$(RM) $(DOBJ)*.o *~ $(DEXE)$(MAIN)

# Set Depends
#depend: $(SRC)$(CSRC) $(SRC)$(FSRC)
#	makedepend $(CINCLUDES) $^

# DO NOT DELETE THIS LINE -- make depend needs it
