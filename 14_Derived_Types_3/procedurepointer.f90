module procpoint
  abstract interface
     real function f(x)
       real,intent(in) :: x
     end function f
  end interface
contains
  real function f1(x)
    implicit none
    real,intent(in) :: x
    f1=sin(x)
  end function f1
  real function f2(x)
    implicit none
    real,intent(in) :: x
    f2=cos(x)
  end function f2  
end module procpoint

program procedurepointer
  use procpoint
  implicit none
  
  real :: x,y
  procedure(f),pointer :: p

  x=0.5
  p=>f1
  print *,p(x)
  p=>f2
  print *,p(x)

end program procedurepointer
