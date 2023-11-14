program whereexamples
  implicit none

  real :: a(5),b(4) ! How about b(0:3)?

  a=[-1,1,2,3,5]
  b=0

  where (a(1:4)>0.0)
     b=a(1:4)**2
  elsewhere
     b=-a(1:4)
  end where

  write(6,*) a
  write(6,*) b


end program whereexamples
