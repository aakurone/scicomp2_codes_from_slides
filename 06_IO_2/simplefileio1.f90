program simplefileio1
  implicit none
  integer :: i,ios
  real :: x
  character(len=80) :: filename
  call get_command_argument(1,filename)
  open(unit=1,file=filename,iostat=ios,status='new')
  if (ios/=0) then
     print '(a,a)','*** Error in opening file ',trim(filename)
     stop
  end if
  do i=1,10
     write(1,'(2g20.10)') 0.1*i,sin(0.1*i)
  end do
  close(unit=1,status='keep')
end program simplefileio1
