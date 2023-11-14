program readoverflow
  implicit none
  integer,parameter :: ik=selected_int_kind(2)
  integer(kind=ik) :: i
  read *,i
  print *,i
end program readoverflow
