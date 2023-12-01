module functype_mod
contains
  real function f1(x)
    implicit none
    real,intent(in) :: x
    real :: y
    y=x**2
    f1=sin(y)*cos(y)
  end function f1
  
  function f2(x)
    implicit none
    real :: f2
    real,intent(in) :: x
    real :: y
    y=x**2
    f2=sin(y)*cos(y)
  end function f2
end module functype_mod

program functype
  use functype_mod
  implicit none
  real :: x
  read *,x
  print *,x,f1(x),f2(x)
end program functype

