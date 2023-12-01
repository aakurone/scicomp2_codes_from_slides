module ppointcomp
  implicit none
  type :: list
     integer :: ind
     type(list),pointer :: next => null()
   contains
     procedure :: proc => process_list
  end type list
contains
  subroutine process_list(this,k)
    implicit none
    class(list),intent(in),target :: this
    integer,intent(out) :: k
    class(list),pointer :: p
    p=>this
    k=0
    do 
       print '(i0,x)',p%ind
       k=k+p%ind
       if (.not.associated(p%next)) exit
       p=>p%next
    end do
  end subroutine process_list
end module ppointcomp

program procpointcomp0
  use ppointcomp
  implicit none
  type(list),pointer :: p,q
  integer :: i,j

  allocate(p)
  p%ind=1
  q=>p
  do i=1,10
     allocate(q%next)     
     q=>q%next
     q%ind=i
  end do
  q%next=>null()
  
  call p%proc(j)
  print '(a,x,i0)','j',j

  !call process_list(p,j)

end program procpointcomp0
