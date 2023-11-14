module optionalarg_mod
contains
  subroutine sub(n)
    implicit none
    integer,optional,intent(in) :: n
    if (present(n)) then
       print *,'We have an argument: ',n
    else
       print *,'No argument here.'
    end if
  end subroutine sub
end module optionalarg_mod

program optionalarg
  use optionalarg_mod
  implicit none
  call sub()
  call sub(1)
end program optionalarg
