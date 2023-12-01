module localvariables_mod
contains
  subroutine sub(i,j)
    implicit none
    integer,intent(inout) :: i,j
    integer :: k
    k=2
    print *,'sub  ',i,j,k
  end subroutine sub
end module localvariables_mod

program localvariables
  use localvariables_mod
  implicit none
  integer :: i,j
  integer :: k
  i=10
  j=20
  k=1
  print *,'main1',i,j,k
  call sub(i,j)
  print *,'main2',i,j,k
end program localvariables
