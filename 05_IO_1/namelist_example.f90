!
! Read input using the namelist construct.
! Example input:
! &nm
! x=1.1
! a(1:2)=1.2
! c(1:10)='A'
! /
!

program namelist_example
  implicit none
  integer,parameter :: n=4
  real :: x(n)
  integer :: a(n)
  character(len=70) :: c,fname
  integer :: ios

  namelist /nm/ x,a,c,fname

  x=huge(x)
  a=huge(a)
  fname='*undef*'
  write(c,'(70("-"))')

  print *,'Before'
  print *,x
  print *,a
  print *,trim(fname)
  print *,c
  print *

  read(5,nml=nm,iostat=ios)
  
  print *,'After'
  print *,x
  print *,a
  print *,trim(fname)
  print *,c
  print *
  
  write(6,nml=nm) 
  
end program namelist_example
