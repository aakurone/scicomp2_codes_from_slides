program infinite
  implicit none
  integer :: i
  do 
     read *,i
     if (i<0) then
        exit
     else
        print *,2**i
     end if
  end do
end program infinite
