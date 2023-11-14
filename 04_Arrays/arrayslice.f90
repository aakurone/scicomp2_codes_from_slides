program arrayslice
  implicit none
  integer :: a(4)
  a=0
  a(1:2)=1
  print *,a
  a=0
  a(1:4:2)=1
  print *,a
end program arrayslice
