program associateconstruct
  implicit none
  real :: x,y
  x=2.0
  y=3.0
  associate (x2=>x**2, y2=>y**2)
    print *,sqrt(x2+y2)
  end associate
end program associateconstruct
