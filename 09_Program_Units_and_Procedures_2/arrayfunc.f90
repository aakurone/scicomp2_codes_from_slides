module arrayfunc_mod
contains
  function func(n,x)
    implicit none
    integer,intent(in) :: n
    real :: func(n)
    real,intent(in) :: x
    func=x
    func(1)=1.0
  end function func
end module arrayfunc_mod

program arrayfunc
  use arrayfunc_mod
  implicit none
  integer,parameter :: n=4
  real :: x
  x=2.0
  print *,func(n,x)
end program arrayfunc

