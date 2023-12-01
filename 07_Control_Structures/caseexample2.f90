program caseexample2
  implicit none
  integer :: command
  integer,parameter :: error=huge(command)
  character(len=80) :: arg

  call get_command_argument(1,arg)

  charselect:  select case (arg)
  case ('a','A')
     command=1
  case ('b','B')
     command=2
  case ('exit','EXIT')
     command=3
  case default
     command=error
  end select charselect
  print '(a,2x,i0)',trim(arg),command
  
end program caseexample2
