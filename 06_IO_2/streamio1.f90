program streamio1
  implicit none
  integer :: i,ios
  real :: x
  character(len=80) :: filename

  call get_command_argument(1,filename)
  open(unit=1,file=filename,iostat=ios,status='new',& 
	access='stream',form='unformatted')
  if (ios/=0) then
     print '(a,a,5x,i0)','*** Error in opening file ', &
		trim(filename),ios
     stop
  end if

  do i=1,10
     write(1) 0.1*i,sin(0.1*i)
  end do
  close(1)

end program streamio1
