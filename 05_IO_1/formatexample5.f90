program formatexample5
  implicit none
  real :: x,y

  x=sin(1.0)
  y=exp(30.0)

  print '(''F '',2(f16.4,x))',x,y
  print '(''E '',2(e16.4,x))',x,y
  print '(''G '',2(g16.4,x))',x,y

end program formatexample5
