module constants
  integer,parameter :: rk=selected_real_kind(10,20)
  real(rk),parameter :: pi=4.0_rk*atan2(1.0_rk,1.0_rk)
  real(rk),parameter :: eV=1.6021892e-19, c=299792458.0, hbar=1.0545887e-34
  real(rk),parameter :: kB=1.38066e-23, u=1.6605655e-27, NA=6.022045e23 
  real(rk),parameter :: me=9.109534e-31, eps0=8.854187817e-12
  real(rk),parameter :: G=6.673e-11, a0=5.291772083e-11 
end module constants

program moduleexample2
  use constants
  implicit none
  real(rk) :: h

  h=2.0*pi*hbar
  print *,'Planck''s constant = ',h

end program moduleexample2
