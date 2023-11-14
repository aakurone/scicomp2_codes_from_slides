program realkind
  implicit none
  integer,parameter :: rk=selected_real_kind(6,15)
  real(kind=rk) :: x
  integer :: i
  x=1.0
  do i=1,64
     x=x*100.0
     print *,i,x
  end do
end program realkind
