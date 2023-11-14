module characterarg_mod
  integer,parameter :: MAXBUF=200
contains
  subroutine sub1(c)
    implicit none 
    character(len=*), intent(in) :: c
    print *,'len = ',len(c)
    print *,'len_trim = ',len_trim(c)
    return
  end subroutine sub1
end module characterarg_mod
  
program characterarg
  use characterarg_mod
  implicit none
  character(len=MAXBUF) :: c
  call get_command_argument(1,c)
  call sub1(c)
end program characterarg

