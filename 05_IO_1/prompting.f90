program prompting
  implicit none
  integer :: i,j
  write(6,'(a)',advance='no') 'Give i: '
  read *,i
  write(6,'(a)',advance='no') 'Give j: '
  read *,j
  print *,i**j
end program prompting
