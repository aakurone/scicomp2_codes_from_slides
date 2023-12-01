program arrayminmax
  implicit none
  integer :: a(3,3),b(4)
  a=reshape([1,2,3,4,5,6,7,8,9],[3,3])
  write(6,'(3(i0,x))') a
  write(6,*)
  write(6,*) minloc(a)
  write(6,*) minval(a)
  write(6,*) maxloc(a)
  write(6,*) maxval(a)
end program arrayminmax
