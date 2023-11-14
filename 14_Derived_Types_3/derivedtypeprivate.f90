module cmd_line

  implicit none
  integer,parameter :: rk=selected_real_kind(10,20) ! This is double precision
  integer,parameter :: MAXBUF=200
  character(len=MAXBUF),private :: argu

contains

  real(rk) function cmd2real(i)
    implicit none
    integer,intent(in) :: i
    call get_command_argument(i,argu)
    read(argu,*) cmd2real
  end function cmd2real

  integer function cmd2int(i)
    implicit none
    integer,intent(in) :: i
    call get_command_argument(i,argu)
    read(argu,*) cmd2int
  end function cmd2int

end module cmd_line

    

module typemod
  type :: vector 
     private
     real :: x,y
  end type vector
contains

  type(vector) function newvector(x,y)
    implicit none
    real,intent(in) :: x,y
    newvector=vector(x,y)
  end function newvector

  real function xcomp(v)
    type(vector),intent(in) :: v
    xcomp=v%x
  end function xcomp

  real function ycomp(v)
    type(vector),intent(in) :: v
    ycomp=v%y
  end function ycomp

end module typemod

program derivetypeprivate
  use typemod
  use cmd_line
 implicit none

  type(vector) :: v
  real :: x,y

  x=cmd2real(1)
  y=cmd2real(2)
  v=newvector(x,y)
  print *,xcomp(v),ycomp(v)  

end program derivetypeprivate
