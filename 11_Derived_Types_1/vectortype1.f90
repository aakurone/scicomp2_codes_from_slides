program vectortype1
  implicit none
  type :: vector
     real :: x,y,z
  end type vector
  type(vector) :: v1,va(4)
  type(vector),allocatable :: vb(:)
  integer :: i
  character(20) :: fm='(3f10.2)'

  v1=vector(1.0,2.0,3.0)
  print *
  print fm,v1

  va=vector(10.0,20.0,30.0)
  print *
  print fm,va

  allocate(vb(3))
  vb=[(vector(1.0**i,2.0**i,3.0**i),i=1,3)]
  print *
  print fm,vb
  print *
  print *,vb
  print *

end program vectortype1
