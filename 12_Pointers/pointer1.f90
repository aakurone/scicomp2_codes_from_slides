program pointer1
  implicit none
  integer,parameter :: n=6
  integer,target :: a(n,n)
  integer :: i
  integer,pointer :: & 
	& p(:,:),q(:,:),r(:,:)

  a=reshape([(i,i=1,n*n)],[n,n])
  print '(/,a)','a'
  print '(6i3)',a
  p => a(2:4,2:4)
  r => p(2:3,2:3)
  print '(/,a)','p'
  print '(3i3)',p
  q => a(1:2,1:2)
  print '(/,a)','q'
  print '(2i3)',q
  q=-1
  print '(/,a)','a'
  print '(6i3)',a
  print '(/,a)','p'
  print '(3i3)',p
  print '(/,a)','q'
  print '(2i3)',q
end program pointer1
