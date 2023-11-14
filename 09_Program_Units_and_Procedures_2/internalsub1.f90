program internalsub1
  implicit none
  integer :: i,j=1
  read(5,*) i
  j=intfunc(i)
  print *,i,j

contains

  integer function intfunc(i)
    implicit none
    integer,intent(in) :: i
    intfunc=i**2+j
    return
  end function intfunc

end program internalsub1
