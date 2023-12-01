module elem
contains
  elemental real function felem(x,y,a)
    implicit none
    real,intent(in) :: x,y,a
    felem=x*y+a
  end function felem
end module elem

program elemental_function
  use elem
  implicit none
  real :: x(3),y(3),a
  x=[1,2,3]
  y=[4,5,6]
  a=7
  print *,sin(x)
  print *,atan2(y,x)
  print *,exp(x*y)
  print *,felem(x,y,a)
end program elemental_function
