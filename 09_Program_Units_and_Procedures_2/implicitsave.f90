module implicitsave_mod
contains
  subroutine sub()
    implicit none
    integer :: i=0,j
    i=i+1
    print *,i,j
  end subroutine sub
end module implicitsave_mod

program implicitsave
  use implicitsave_mod
  implicit none
  integer :: n
  do n=1,3
     call sub()
  end do
end program implicitsave
