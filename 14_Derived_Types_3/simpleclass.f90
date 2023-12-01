program simpleclass
  implicit none
  type :: p
     real :: x,y
  end type p
  type,extends(p) :: p3
     real :: z
  endtype p3
  class(p),pointer :: pp
  type(p),target :: p1
  type(p3),target :: p2

  p1%x=1.0
  p1%y=2.0
  p2%x=-1.0
  p2%y=-2.0
  p2%z=-3.0

  pp=>p1
  print *,pp%x,pp%y
  pp=>p2 
  select type(pp)
  type is (p3)
     print *,pp%x,pp%y,pp%z
  end select
end program simpleclass
