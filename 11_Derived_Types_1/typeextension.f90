program typeextension
  implicit none
  type :: vector2
     real :: x,y
  end type vector2
  type,extends(vector2) :: vector3
     real :: z
  end type vector3
  type (vector2) :: x
  type (vector3) :: y
  x=vector2(1.0,2.0)
  y=vector3(3.0,4.0,5.0)
  print *,x
  print *,y
  print *,y%vector2
end program typeextension
