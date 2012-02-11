FC	= ifort
#FC	= gfortran
FFLAGS	= -O3 -I/../src/
OBJS	= base_types.o lib_array.o 
SRCOBJS	= ../src/base_types.o ../src/lib_array.o
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
