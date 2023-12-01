program implieddooloop
  implicit none
  integer :: i,j,k
  print '(3i4)',[(((100*k+10*i+j,k=1,3),j=1,3),i=1,3)]
end program implieddooloop
