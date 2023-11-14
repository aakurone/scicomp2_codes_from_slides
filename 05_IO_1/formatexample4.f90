program formatexample4
  implicit none
  integer :: a(3,3),i,j
  do i=1,3
     a(i,1:3)=[(10*i+j,j=1,3)]
  end do
  print '(3(i0,x))',a
  print *
  print '(3(i0,x))',transpose(a)
end program formatexample4
