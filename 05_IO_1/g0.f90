program g0
  implicit none
  logical :: l
  character(len=4) :: c
  integer :: i
  real :: x
  complex :: z
  real(kind=8) :: y
  real(kind=16) :: yy

  l=.false.
  c='abcd'
  i=2**20
  x=exp(2.0)
  z=cmplx(sqrt(2.0),sqrt(3.0))
  y=exp(40.0_8)
  yy=exp(100.0_16)

  print '("|",g0,"|",7(/,"|",g0,"|"))',l,c,i,x,z,y,yy

end program g0
