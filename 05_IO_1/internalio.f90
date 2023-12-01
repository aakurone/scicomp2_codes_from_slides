program internalio
  implicit none
  real :: x
  character(len=80) :: c

  read(5,*) c
  read(c,*) x
  print '(a,g16.6)',trim(c),x

  write(c,'(e20.10)') x
  print '(a)',trim(c)

end program internalio
