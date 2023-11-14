module mod1
  implicit none
  integer,parameter :: MAXBUF=200
  character(len=MAXBUF) :: arg
contains
  real function f(x)
    real,intent(in) :: x
    f=sin(exp(x))
  end function f
end module mod1

program moduleexample1
  use mod1
  implicit none
  real :: x,y
  call get_command_argument(1,arg)
  read(arg,*) x
  y=f(x)
  print *,x,y
end program moduleexample1

