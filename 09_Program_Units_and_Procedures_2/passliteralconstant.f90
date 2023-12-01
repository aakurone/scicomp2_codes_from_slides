module passliteralconstant_mod
contains
  subroutine sub(n,a,k)
    implicit none
    integer :: n,a(n)
    integer,intent(in) :: k
    k=2*k
    a=k*a
  end subroutine sub
end module passliteralconstant_mod

program passliteralconstant
  use passliteralconstant_mod
  implicit none
  integer,parameter :: n=4
  integer :: a(n),i
  a=[(i,i=1,n)]
  call sub(n,a,2)
  print *,a
end program passliteralconstant

