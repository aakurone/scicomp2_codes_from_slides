module keywordargs_mod
contains
  subroutine sub(m,n)
    implicit none
    integer,intent(in) :: m,n
    print *,2*m,3*n
  end subroutine sub
end module keywordargs_mod

program keywordargs
  use keywordargs_mod
  implicit none
  integer :: i=1,j=2
  call sub(i,j)
  call sub(m=i,n=j)
  call sub(n=j,m=i)
end program keywordargs

