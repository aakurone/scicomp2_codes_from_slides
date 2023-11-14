program scanreal1
  implicit none
  real :: x1,x2,dx,x
  integer :: n,nmax

  read *,x1,x2,nmax
  dx=(x2-x1)/(nmax-1)

  do n=0,nmax-1
     print *,n,x1+dx*n
  end do

end program scanreal1

