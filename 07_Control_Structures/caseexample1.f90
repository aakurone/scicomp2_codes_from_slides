program caseexample1
  implicit none
  integer :: i
  character(len=80) :: arg

  call get_command_argument(1,arg)
  read(arg,*) i

  numsign:  select case (i)
  case (0)
     print *,'zero'
  case (:-1)
     print *,'negative'
  case (1:)
     print *,'positive'
  end select numsign
  
end program caseexample1
