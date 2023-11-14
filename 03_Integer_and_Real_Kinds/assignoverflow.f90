program assignoverflow
  implicit none
  integer,parameter :: ik=selected_int_kind(2)
  integer(kind=ik) :: i
  i=100000
  print *,i
end program assignoverflow
