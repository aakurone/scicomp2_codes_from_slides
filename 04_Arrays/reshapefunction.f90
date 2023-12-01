program reshapefunction
  implicit none
  integer :: a(3,3),b(9),i
  b=[1,2,3,4,5,6,7,8,9]
  a=reshape(b,[3,3])
  print *,a
  print *
  do i=1,3
     print *,a(i,:)
  end do
end program reshapefunction
