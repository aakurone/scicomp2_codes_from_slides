program streamio2
  implicit none
  integer :: i,j,ios,sz
  integer,parameter :: n=100
  real :: x(n),y(n)
  character(len=80) :: filename
  call get_command_argument(1,filename)
  inquire(file=filename,size=sz)
  print '(a,i0)','File size: ',sz
  open(unit=1,file=filename,iostat=ios,status='old',& 
		access='stream',form='unformatted')
  if (ios/=0) then
     print '(a,a,5x,i0)','*** Error in opening file ',& 
		trim(filename),ios
     stop
  end if
  i=1
  do 
     read(1,iostat=ios) x(i),y(i)
     if (ios<0) exit
     i=i+1
  end do
  close(1)
  i=i-1
  print '(a,i0)','Numbers of data points: ',i
  do j=1,i
     print '(2g20.10)',x(j),y(j)
  end do

end program streamio2
