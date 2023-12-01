program implicitconversion
  implicit none
  real :: x,y
  integer :: i,j
  complex :: c1,c2=(1.0,2.0)

  j=10
  x=5.0
  x=x**x
  i=x
  y=j
  c1=2*c2
  print *,j,x,i,y,c1,c2
end program implicitconversion
