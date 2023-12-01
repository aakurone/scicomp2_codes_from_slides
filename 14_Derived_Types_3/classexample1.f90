module classmod
  implicit none

  type :: position
     real :: x,y,z
  end type position

  type,extends(position) :: charged_particle
     real :: q
  end type charged_particle

  type,extends(charged_particle) :: atom
     character(10) :: name
  end type atom

contains
  real function distance(a,b)
    class(position),intent(in) :: a,b
    distance=sqrt((a%x-b%x)**2+(a%y-b%y)&
       &**2+(a%z-b%z)**2)
  end function distance

end module classmod

program classexample1
  use classmod
  implicit none
  
  class(position),pointer :: carbon
  character(10) :: name

  allocate(atom :: carbon)
  carbon%x=1.0
  carbon%y=2.0
  carbon%z=3.0

  select type(carbon)
  type is (position)
     print '(a)','Cannot set charge nor name.'
  type is (charged_particle)
     carbon%q=-1
     print '(a)','Cannot set name.'
  type is (atom)
     carbon%name='C'
  end select 

end program classexample1

