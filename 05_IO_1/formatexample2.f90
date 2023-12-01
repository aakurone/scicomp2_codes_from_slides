program formatexample2
  implicit none
  integer :: i
  real :: x
  character(len=80) :: form
  form='(i2,/,f16.2,/)'
  read(5,*) i,x
  print form,i,x
  print '(''G'',/,i10,5x,g14.4)',i,x
  print '(i10,5x,g14.4e4)',i,x
  print '(''E'',/,i10,5x,e14.4)',i,x
  print '(i10,5x,e14.4e4)',i,x
end program formatexample2
