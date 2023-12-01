module parg
contains
  subroutine sub(a,b)
    implicit none
    integer,pointer :: a,b
    if (associated(a).and.associated(b)) then
       a=a+b
    else
       print *,'Error'
    end if
  end subroutine sub
end module parg

program pointerargument
  use parg
  implicit none
  integer,pointer :: p,q
  integer,target :: a,b
  nullify(p,q)
  a=1
  b=2
  p=>a
  q=>b
  print *,'Before ',a,b
  call sub(p,q)
  print *,'After  ',a,b
end program pointerargument
