FC	= ifort
#FC	= gfortran
FFLAGS	= -O3 -I/../src/
OBJS	= lib_array.o
SRCOBJS	= ../src/$(OBJS)
.SUFFIXES: .f90
.f90.o: 
	$(FC) $(FFLAGS) -c $<
.f90.mod: 
	$(FC) $(FFLAGS) -c $<
default: arrays
arrays: $(SRCOBJS) arrays.o
	$(FC) $(FFLAGS) -o $@ $(OBJS) $@.o $(LDFLAGS)
clean:
	-rm -f *.o *.mod
	-rm -f arrays
