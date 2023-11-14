program parameterizedtype
  implicit none

  type :: vector(rk1,n)
     integer,kind :: rk1
     integer,len :: n
     real(rk1) :: v(n)
  end type vector
  integer,parameter :: rk=kind(0.0)

  type (vector(rk,2)) :: w

  w%v=[1.0,2.0]
  print *,w

end program parameterizedtype
