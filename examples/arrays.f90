program arrays
!
!  This is an example program to better understand how to use lib_array
!  in your codes.
!
use lib_array
implicit none

! Always remember to use the selected_real_kinds
integer,parameter :: dp = selected_real_kind(p=15,r=307)
real(dp),allocatable :: x(:)
real(dp)  :: xmin,xmax
integer :: n
n = 5
xmin = 1.0
xmax = 10.0
allocate(x(n))

call linspace(xmin,xmax,x)
write(*,*) x

end program arrays
