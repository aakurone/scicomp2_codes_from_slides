program formatexample6
  implicit none
  integer :: i,j
  real :: x,y
  read(5,*) i,j,x,y
  print '(2(i10,x),2(g20.10,x))',i,j,x,y
  print '(4(b32,x))',i,j,x,y
  print '(4(o12,x))',i,j,x,y
  print '(4(z8,x))',i,j,x,y
end program formatexample6
