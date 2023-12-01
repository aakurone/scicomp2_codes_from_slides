program mathelemental
  implicit none
  real :: x(3),y(3)
  x=[1,2,3]
  y=[4,5,6]
  write(6,*) sin(x)
  write(6,*) atan2(y,x)
  write(6,*) exp(x*y)
end program mathelemental
