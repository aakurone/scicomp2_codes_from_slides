program column_major
  implicit none
  integer :: a(3,3),b(9),i,j
  do i=1,3
     do j=1,3
        a(i,j)=10*i+j
     end do
  end do
  write(6,*) a
  b=reshape(a,[9])
  write(6,*) b
end program column_major
