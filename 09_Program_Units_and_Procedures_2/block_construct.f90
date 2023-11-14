program block_construct
  implicit none
  integer :: i
  real :: x=123.0
  print *,'before:',x
  do i=1,5
     block
       real :: x,y
       x=0.1*i
       y=sin(x)
       print *,'in:',x,y
     end block
  end do
  print *,'after :',x
end program block_construct
