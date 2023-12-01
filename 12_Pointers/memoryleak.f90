program memoryleak
  integer,parameter :: n=1000
  integer,target :: a(n,n)
  integer,pointer :: p(:,:)
  integer :: i

  a=1

  do i=1,100000000
     allocate(p(n,n))
     p => a
     if (mod(i,10000)==0) print *,i
  end do

end program memoryleak

  
