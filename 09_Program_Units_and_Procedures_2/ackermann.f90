!-----------------------------------------------------------------!
!                                                                 !
! Ackermann function.                                             !
! The 3rd argument is the interval for printing some interesting  !
! statistics.                                                     !
!                                                                 !
! Try e.g.                                                        !
! ./a.out 4 1 100000 2> ack.out; pl ack.out -xauto -c 4 4 -p -nl  !
!                                                                 !
! For course FYS2085 Scientific computing II                      !
! Antti Kuronen, antti.kuronen@helsinki.fi, 2014-2022             !
!                                                                 !
!-----------------------------------------------------------------!

module ackermann_module
  integer,parameter :: MAXBUF=200
  ! --- We might need 8 byte integers
  integer,parameter :: ik=selected_int_kind(12)
  ! --- Used for printing out some recursion statistics to stderr
  integer(ik) :: ncall,ndepth,maxdepth,nprint
  logical :: printargs

contains

  ! --- The monster function itself
  recursive function ack(m,n) result(a)
    implicit none
    integer(ik),intent(in) :: m,n
    integer(ik) :: a
    ndepth=ndepth+1
    ncall=ncall+1    
    if (printargs.and.mod(ncall,nprint)==0) write(0,'(4(i0,x))') m,n,ncall,ndepth
    if (ndepth>maxdepth) maxdepth=ndepth
    if (m==0) then
       a=n+1
    else if (n==0) then
       a=ack(m-1,1_ik)
    else
       a=ack(m-1,ack(m,n-1))
    end if
    ndepth=ndepth-1
    return
  end function ack

  ! --- Get the command line arguments and check their validity
  subroutine getargs(m,n)
    integer(ik),intent(out) :: m,n
    integer :: iargc
    character(len=MAXBUF) :: arg

    iargc=command_argument_count()
    if (iargc/=2 .and. iargc/=3) then
       call get_command_argument(0,arg)
       write(0,'(a)') 'usage: '//trim(arg)//' m n [nprint]'
       stop
    end if
    call get_command_argument(1,arg)
    read(arg,*) m
    call get_command_argument(2,arg)
    read(arg,*) n
    if (m<0.or.n<0) then
       write(0,'(a)') 'Both arguments m,n must be zero or positive.'
       stop
    end if
    if (iargc==3) then
       call get_command_argument(3,arg); read(arg,*) nprint
       printargs=.true.
    else
       nprint=huge(nprint)
       printargs=.false.
    end if
    return
  end subroutine getargs
  
end module ackermann_module

program ackermann
  use ackermann_module
  implicit none
  integer(ik) :: m,n
  integer(ik) :: a
  real :: t1,t2
  character(len=MAXBUF) :: fmt1='(a,i0,5x,a,2(i0,x),10x,a,i0,2x,a,i0)',fmt2='(a,g20.10)'

  call getargs(m,n)
  
  ncall=0
  ndepth=0
  maxdepth=0

  call cpu_time(t1)
  a=ack(m,n)
  call cpu_time(t2)

  print fmt1,'ackermann ',a,'args ',m,n,'ncall ',ncall,'maxdepth ',maxdepth
  print fmt2,'CPU time in sec ',t2-t1

  stop
end program ackermann
