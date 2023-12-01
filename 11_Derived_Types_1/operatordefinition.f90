module dertypfuncmod
  implicit none
  type :: vector
     real :: x,y
  end type vector
  interface operator(+)
     module procedure vadd
  end interface operator(+)
  interface operator(-)
     module procedure vsub
  end interface operator(-)
contains
  type (vector) function vadd(v,u)
    implicit none
    type (vector),intent(in) :: v,u
    vadd%x=v%x+u%x
    vadd%y=v%y+u%y
  end function vadd
  type (vector) function vsub(v,u)
    implicit none
    type (vector),intent(in) :: v,u
    vsub%x=v%x-u%x
    vsub%y=v%y-u%y
  end function vsub
end module dertypfuncmod

program operatordefinition
  use dertypfuncmod
  implicit none
  type (vector) :: a,b,c

  a=vector(1.0,2.0)
  b=vector(-2.0,3.0)
  c=vadd(a,b)

  print *,a
  print *,b
  print *,c
  print *,a+b
  print *,a-b

end program operatordefinition
