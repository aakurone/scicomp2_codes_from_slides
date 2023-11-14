module alloarrfunc
contains
  function f(x)
    real,allocatable :: f(:)
    real,intent(in) :: x
    integer :: i,j
    i=int(x)
    allocate(f(0:i))
    f=[(sin(0.1*j),j=0,i)]
  end function f
end module alloarrfunc

program alloarrfuncmodule
  use alloarrfunc
  implicit none
  real :: x
  real,allocatable :: y(:)

  x=sqrt(88.0)
  y=f(x)
  print '(3i6)',lbound(y),ubound(y),shape(y)
  print '(100f8.4)',y

end program alloarrfuncmodule

