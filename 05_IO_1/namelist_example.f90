!
! Read input using the namelist construct.
! Example input:
! &nm
! x=1.1, 3*2.0, 
! a=3*1, 10,
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

  write(0,*) 'Before'
  write(0,*) x
  write(0,*) a
  write(0,*) trim(fname)
  write(0,*) c
  print *

  read(5,nml=nm,iostat=ios)
  
  write(0,*) 'After'
  write(0,*) x
  write(0,*) a
  write(0,*) trim(fname)
  write(0,*) c
  print *
  
  write(6,nml=nm) 
  
end program namelist_example
