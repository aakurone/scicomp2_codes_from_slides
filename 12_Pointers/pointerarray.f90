program pointerarray
  implicit none
  integer,parameter :: n=4,m=3
  type :: ptype
     integer,pointer :: p(:)
  end type ptype
  type (ptype) :: pa(n)
  integer,target :: a(n,m)
  integer :: i,j

  a=reshape([((i+10*j,j=1,m),i=1,n)],[n,m])

  do i=1,n
     pa(i)%p => a(i,1:m:2)
  end do

  do i=1,n
     print *,pa(i)%p
  end do

  call pr(pa(1)%p)
  
contains
  subroutine pr(b)
    implicit none
    integer,intent(in) :: b(:)
    print *,b
  end subroutine pr
  
end program pointerarray
