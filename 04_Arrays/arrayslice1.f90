program arrayslice1
  implicit none
  integer :: a(10)
  a=[1,2,3,4,5,6,7,8,9,10]
  print *,a
  print *,a(:5)
  print *,a(:5:2)
  print *,a(5:)
  print *,a(1::3)
end program arrayslice1
