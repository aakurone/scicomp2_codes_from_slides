program kinds_iso_fortran_env
  use iso_fortran_env
  implicit none

  integer(int8)  :: i8
  integer(int16) :: i16
  integer(int32) :: i32
  integer(int64) :: i64

  real(real32)  :: r32
  real(real64)  :: r64
  real(real128) :: r128
  
  i8=100_int8
  i16=10000_int16
  i32=1000000_int32
  i64=100000000_int64

  r32=1e20_real32
  r64=1e100_real64
  r128=1e1000_real128

  print *
  print *,'Kind constants'
  print *,int8,int16,int32,int64
  print *,real32,real64,real128
  print *
  
  print *,'Integers'
  print *,i8,i16,i32,i64
  print *,huge(i8),huge(i16),huge(i32),huge(i64)
  print *

  print *,'Reals'
  print *,r32,r64,r128
  print *,huge(r32),huge(r64),huge(r128)
  print *
  
end program kinds_iso_fortran_env
