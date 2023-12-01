module passarray1a_mod
contains
  subroutine sub(arr1,arr2)
    implicit none
    integer,intent(in) :: arr1(:)
    integer,intent(out) :: arr2(:,:)
    integer :: i,n,m
    
    n=size(arr1)
    m=size(arr2)
    print *,'Array sizes: ',n,m
    
    do i=1,n
       arr2(1:n,i)=arr1
    end do
    
    return
  end subroutine sub
end module passarray1a_mod

program passarray1a
  use passarray1a_mod
  implicit none

  integer,parameter :: n=4
  integer :: a(n),b(n,n),i
  a=[(i,i=1,n)]
  call sub(a,b)
  print '(1000(i0,x))',b
end program passarray1a
