module constants
  integer,parameter :: MAXBUF=200
  integer,parameter :: rk=selected_real_kind(10,20)
end module constants

module owntypes
  use constants
  type :: vector 
     real(rk) :: x,y,z
  end type vector
  type :: entry
     character(MAXBUF) :: name
     integer :: count
  end type entry
end module owntypes

program derivedtypemodule
  use constants
  use owntypes
  type (vector) :: v
  type (entry) :: e
  real(rk) :: x
  !...
end program derivedtypemodule
