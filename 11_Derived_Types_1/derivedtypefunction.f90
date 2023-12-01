module dertypfuncmod
  implicit none
  type :: vector
     real :: x,y
  end type vector
contains
  type (vector) function vadd(v,u)
    implicit none
    type (vector),intent(in) :: v,u
    vadd%x=v%x+u%x
    vadd%y=v%y+u%y
  end function vadd
end module dertypfuncmod

program derivedtypefunction
  use dertypfuncmod
  implicit none
  type (vector) :: a,b,c

  a=vector(1.0,2.0)
  b=vector(-2.0,3.0)
  c=vadd(a,b)

  print *,a
  print *,b
  print *,c

end program derivedtypefunction
