module subrsave_mod
contains
  subroutine saveattr(i)
    implicit none
    integer,intent(in) :: i
    logical :: firstcall=.true.
    integer,save :: j
    
    if (firstcall) then
       firstcall=.false.
       j=0
    end if
    j=j+i
    print *,'sub ',j
  end subroutine saveattr
end module subrsave_mod

program subrsave
  use subrsave_mod
  implicit none
  integer :: i

  do i=1,3
     call saveattr(i)
  end do

end program subrsave
