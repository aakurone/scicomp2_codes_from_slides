module passarray1_mod
contains
  subroutine sub(n,arr1,arr2)
    implicit none
    integer,intent(in) :: n
    integer,intent(in) :: arr1(n)
    integer,intent(out) :: arr2(n,n)
    integer :: i
    
    do i=1,n
       arr2(1:n,i)=arr1
    end do
    
    return
  end subroutine sub
end module passarray1_mod
  
program passarray1
  use passarray1_mod
  implicit none
  integer,parameter :: n=4
  integer :: a(n),b(n,n),i

  a=[(i,i=1,n)]
  call sub(n,a,b)
  print *,b

end program passarray1
