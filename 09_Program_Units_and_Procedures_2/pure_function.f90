module puref
contains
  pure real function fpure(x)
    implicit none
    real,intent(in) :: x
    !print *,x
    fpure=sin(x)**3
  end function fpure
end module puref

program pure_function
  use puref
  implicit none
  real :: x,y
  x=12.0
  y=fpure(x)
  print *,x,y
end program pure_function
