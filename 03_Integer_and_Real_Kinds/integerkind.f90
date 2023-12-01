program integerkind
  implicit none
  integer,parameter :: ik=selected_int_kind(2)
  integer(kind=ik) :: i,j
  i=1
  do j=1,10
     i=2*i
     print *,j,i
  end do
end program integerkind
