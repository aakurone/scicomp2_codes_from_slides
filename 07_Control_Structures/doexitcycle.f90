program doexitcycle
  implicit none
  integer :: i,n
  real :: dx,x,y
  character(len=80) :: arg
  
  call get_command_argument(1,arg)
  read(arg,*) n
  dx=0.01
  y=0
  do i=1,n
     x=sin(dx*i)
     if (x>0.5) cycle
     y=y+x
     if (y>10.0) exit
  end do  
  print *,y,i
  
end program doexitcycle
