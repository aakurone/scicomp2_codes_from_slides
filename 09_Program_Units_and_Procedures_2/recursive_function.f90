module recursive_function_mod
  integer,parameter :: ik=selected_int_kind(12)
contains

  recursive function ack(m,n) result(a)
    implicit none
    integer(ik),intent(in) :: m,n
    integer(ik) :: a
    
    if (m==0) then
       a=n+1
    else if (n==0) then
       a=ack(m-1,1_ik)
    else
       a=ack(m-1,ack(m,n-1))
    end if
    
    return
  end function ack  
end module recursive_function_mod

program recursive_function
  use recursive_function_mod
  implicit none
  integer(ik) :: m,n
  integer(ik) :: a
  character(len=80) :: arg
  
  call get_command_argument(1,arg); read(arg,*) m
  call get_command_argument(2,arg); read(arg,*) n
  print '(4(i0,x))',m,n,ack(m,n)
end program recursive_function

