program internalsub2
  implicit none
  integer :: i,j=1
  read(5,*) i
  j=intfunc()
  print *,i,j

contains

  integer function intfunc()
    implicit none
    intfunc=i**2+j
    return
  end function intfunc

end program internalsub2
