module assimod
  implicit none

  type :: vector
     real :: x,y
  end type vector

  interface assignment(=)
     module procedure assi
  end interface assignment(=)

contains

  subroutine assi(v,u)
    type(vector),intent(out) :: v
    type(vector),intent(in) :: u
    v%x=u%x
    v%y=u%y
  end subroutine assi

end module assimod

program assioper
  use assimod
  implicit none

  type(vector) :: v1,v2
  v1=vector(1,2)
  v2=v1
  print *,v1
  print *,v2

end program assioper

