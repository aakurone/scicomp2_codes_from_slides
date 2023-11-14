program arrayinquiry
  implicit none
  integer :: a(2,3),b(4)
  print *,lbound(a)
  print *,ubound(a)
  print *,lbound(a,1),lbound(a,2)
  print *,ubound(a,1),ubound(a,2)
  print *,shape(a)
  print *,shape(b)
  print *,size(a)
  print *,size(b)
end program arrayinquiry
