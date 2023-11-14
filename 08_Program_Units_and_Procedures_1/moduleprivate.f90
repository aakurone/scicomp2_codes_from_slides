module modu
  implicit none
  integer,private :: i=0
contains
  subroutine modsub(n)
    implicit none
    integer,intent(in) :: n
    i=i+n
    print *,i
    if (i>10) then
       print *,'Exceeded'
       i=0
    end if
  end subroutine modsub
end module modu

program moduleprivate
  use modu
  implicit none
  integer :: n,i
  do i=1,100
     call modsub(1)
  end do
end program moduleprivate
