program ceiling_floor_int_nint
  implicit none
  character(len=80) :: arg
  real :: x1,x2,dx,x
  integer :: i,imax

  call get_command_argument(1,arg)
  read(arg,*) x1
  call get_command_argument(2,arg)
  read(arg,*) x2
  call get_command_argument(3,arg)
  read(arg,*) dx

  imax=(x2-x1)/dx

  do i=0,imax
     x=x1+i*dx
     write(10,*) x,ceiling(x)
     write(20,*) x,floor(x)
     write(30,*) x,int(x),nint(x)
     write(40,*) x,nint(x)
  end do

end program ceiling_floor_int_nint
