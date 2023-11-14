module llmodule
  implicit none
  integer,parameter :: MAXBUF=80
  type :: node
     character(MAXBUF) :: data
     integer :: ind
     type (node),pointer :: prev
     type (node),pointer :: next
  endtype node
end module llmodule

program linkedlist
  use llmodule  
  implicit none
  integer,parameter :: MAXARG=100
  type (node),pointer :: head,tail,p
  character(MAXBUF) :: arg(MAXARG)
  integer :: i,iar

  nullify(head,tail,p) ! Important

  ! Collect all the cmd line arguemments
  ! into array arg(:)
  iar=command_argument_count()
  do i=1,iar
     call get_command_argument(i,arg(i))
  end do

  if (iar>0) then   ! The 1st element
     allocate(head)
     head%data=arg(1)
     head%ind=1
     head%prev=>null()
     head%next=>null()
     tail=>head
  end if

    do i=2,iar   ! All the rest
     p=>tail
     allocate(tail)
     tail%data=arg(i)
     tail%ind=i
     tail%prev=>p
     p%next=>tail
  end do

  print '(/,a)','Forward'
  p=>head
  do      
     if (.not.associated(p)) exit
     print '(i3,2x,a)',p%ind,trim(p%data)
     p=>p%next
  end do

  print '(/,a)','Backward'
  p=>tail
  do      
     if (.not.associated(p)) exit
     print '(i3,2x,a)',p%ind,trim(p%data)
     p=>p%prev
  end do

end program linkedlist
