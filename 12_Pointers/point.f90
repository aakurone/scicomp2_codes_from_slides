program point
  implicit none
  integer,target :: a,b
  integer,pointer :: p
  a=1
  b=2
  p=>a
  print *,p
  p=>b
  print *,p
  b=1000
  print *,p
end program point
