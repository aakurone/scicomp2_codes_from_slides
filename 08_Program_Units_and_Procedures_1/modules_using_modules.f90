module mod1
  integer ::i1=1
end module mod1

module mod2
  use mod1
  integer :: i2=2
end module mod2

module mod3
  use mod2
  integer :: i3=3
end module mod3

program modules_using_modules
  use mod3
  print *,i1,i2,i3
end program modules_using_modules
