program formatexample1
  implicit none

  real :: x
  character(len=80) :: form

  form='(f10.2)'
  read *,x
  print *,x
  print '(f10.2)',x
  write(6,form) x
  write(6,100) x
100 format(f10.2)

end program formatexample1
