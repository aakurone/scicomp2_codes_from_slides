program pointer2
  implicit none
  integer,target :: a,b
  integer,pointer :: p

  print *,associated(p),associated(p,a)
  p => null()
  print *,associated(p),associated(p,a)
  p => a
  print *,associated(p),associated(p,a)

end program pointer2
