program many_files_open
  implicit none
  integer,parameter :: u=1000
  integer :: i,j,ios,unit_number(3)
  real :: x
  character(len=200) :: filename(3),message

  call get_command_argument(1,filename(1))
  call get_command_argument(2,filename(2))
  call get_command_argument(3,filename(3))

  do j=1,3
  
     open(newunit=unit_number(j),file=filename(j),iostat=ios,iomsg=message,status='new')
     if (ios/=0) then
        print '(a,a,5x,i0)','*** Error in opening file ',trim(filename(j)),ios
        print '(a,a)','Error message: ',trim(message)
        stop
     end if
     print '(a,a,x,i0)','Unit number ',trim(filename(j)),unit_number(j)
     
     do i=1,10
        write(unit_number(j),*) 0.1*i,sin(0.1*i)
     end do

  end do

  do j=1,3
     close(unit_number(j),status='keep')
  end do
     
end program many_files_open
