program commandlineargs
  implicit none
  integer :: i,iarg
  real :: x
  character(len=80) :: arg

  iarg=command_argument_count()
  if (iarg/=2) then
     call get_command_argument(0,arg)
     write(0,'(a,a,a)') &
		'usage: ',trim(arg),' i x'
     stop
  end if

  call get_command_argument(1,arg)
  read(arg,*) i
  call get_command_argument(2,arg)
  read(arg,*) x

  print '(a,i6,a,g16.6)',&
	'Got arguments ',i,' and ',x

end program commandlineargs
