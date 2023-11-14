program scanreal_args
  implicit none
  real :: x1,x2,dx,x
  integer :: n,nmax
  character(len=80) :: arg

  call get_command_argument(1,arg)
  read(arg,*) x1
  call get_command_argument(2,arg)
  read(arg,*) x2
  call get_command_argument(3,arg)
  read(arg,*) dx
  nmax=(x2-x1)/dx

  do n=0,nmax
     print *,n,x1+dx*n
  end do

end program scanreal_args
