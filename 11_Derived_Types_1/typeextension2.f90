program typeextension2
  implicit none
  
  type :: vector2
     real :: x,y
  end type vector2

  type,extends(vector2) :: vector3
     real :: z
  end type vector3

  type,extends(vector3) :: point
     character(10) :: name
  end type point

  type (point) :: p

  p=point(6.0,7.0,8.0,'P1')

  print *,p
  print *,p%vector3
  print *,p%vector3%vector2

end program typeextension2
