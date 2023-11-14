program derivedtype2
  implicit none

  type :: vector 
     real :: x,y,z
  end type vector

  type :: atom
     character(2) :: elem
     type (vector) :: pos
  end type atom

  type (atom) :: molecule(5)

  molecule(1)=atom('C',vector( 0.0, 0.0, 0.0))
  molecule(2)=atom('H',vector( 1.0, 1.0, 1.0))
  molecule(3)=atom('H',vector( 1.0,-1.0,-1.0))
  molecule(4)=atom('H',vector( 1.0, 1.0,-1.0))
  molecule(5)=atom('H',vector(-1.0,-1.0, 1.0))

  print '(a,3f10.2)',molecule

  print *,molecule(5)%pos%x

end program derivedtype2
