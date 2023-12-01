program pointer3
  implicit none
  integer,parameter :: n=6,m=3
  integer,target :: a(n,n)
  integer,pointer :: p(:,:)
  integer :: i,j
  character(20) :: f1,f2

  f1='(6i4)'
  f2='(3i4)'

  a=reshape([((10*i+j,j=1,n),i=1,n)],[n,n])
  print *
  print f1,a

  p => a(1:n:2,1:n:2)
  print *
  print f2,p

  p=-transpose(p)
  print *
  print f1,a

end program pointer3
