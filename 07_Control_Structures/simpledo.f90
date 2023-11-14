program simpledo
  implicit none
  integer :: i,k

  read(5,*) k

  loop: do i=0,k
     print *,i,sin(real(i)/10.0)
  end do loop

end program simpledo
