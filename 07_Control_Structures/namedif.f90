program namedif
  implicit none
  real :: x

  read *,x

  zero: if (x==0) then
     print *,'Zero!'
  else if (x<0) then 
     print *,'Negative.'
  else 
     print *,'Positive.'
  end if zero

end program namedif
