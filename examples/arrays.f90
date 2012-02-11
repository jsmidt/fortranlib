program arrays
!
!  This is an example program to better understand how to use lib_array
!  in your codes.
!
use lib_array
use base_types
implicit none
real(dp) :: xmin, xmax
real(dp), allocatable, dimension(:) :: x
integer  :: n
n = 10
xmin = 1.0
xmax = 20.0
allocate(x(n))

! Create an array from 1 to 20 with 10 linearly spaced bins
call linspace(xmin,xmax,x)
write(*,*) x

end program arrays
