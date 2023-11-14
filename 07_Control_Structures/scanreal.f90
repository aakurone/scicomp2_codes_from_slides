program scanreal
  implicit none
  real :: x1,x2,dx,x
  integer :: n,nmax

  read *,x1,x2,dx
  nmax=(x2-x1)/dx

  do n=0,nmax
     print *,n,x1+dx*n
  end do

end program scanreal
