subroutine intenterror1(x,y)
  implicit none
  real,intent(in) :: x,y
  y=sin(x)
  return
end subroutine intenterror1
