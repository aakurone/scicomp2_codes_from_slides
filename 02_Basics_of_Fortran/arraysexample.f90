program arraysexample
  implicit none
  integer,dimension(2,4) :: a,b
  integer :: c(3,6),d(2,4,6)
  real,dimension(2,2) :: x
  real :: y(3,2)
  a=1
  b=2
  c=0
  c(1:2,:)=3
  d=-1
  x=1
  x=sin(x)
  print *,'a',a
  print *,'b',b
  print *,'c',c
  print *,'d',d
  print *
  print *,'x',x
  print *,'y',y
end program arraysexample
