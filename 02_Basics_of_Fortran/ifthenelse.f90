program ifthenelse
  integer :: i
  read *,i
  if (i<0) then
     print *,'negative'
  else if (i>0.and.i<10) then
     print *,'small positive'
  else
     print *,'large positive'
  end if
end program ifthenelse
