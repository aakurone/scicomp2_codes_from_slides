program derivedtype4
  implicit none
  type :: rec
     integer :: i,j,k
  end type rec
  type (rec) :: a,b
  a=rec(1,2,3)
  b=a
  b%i=10*b%i
  print *,a
  print *,b
end program derivedtype4
