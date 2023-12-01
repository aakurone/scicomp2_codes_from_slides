program normalize_matrix
  implicit none
  integer,parameter :: n=4
  real :: a(n),b(n,n)

  a=[1,2,3,4]
  b=reshape([11,21,31,41,12,22,32,42,13,23,33,34,14,24,34,44],[n,n])

  print *,'before'
  call prettyprintmatrix(b,n)

  b(2,:)=b(2,:)/sum(b(2,:))
  print *,'after'
  call prettyprintmatrix(b,n)

  print *
contains

    subroutine prettyprintmatrix(a,n)
    integer :: n
    real :: a(n,n)
    integer :: i
    do i=1,n
       print *, a(i,:)
    end do
    return
  end subroutine prettyprintmatrix
  
end program normalize_matrix
