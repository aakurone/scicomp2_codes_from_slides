program pointer5
  implicit none
  integer,target :: a,b
  integer,pointer :: p,q
  a=1
  b=2
  print *
  nullify(p,q)
  p => a
  allocate(q)
  q=p   ! Not a pointer association, data copied
  print '(2i5)',p,q
  a=-1
  print '(2i5,5x,2l2)',p,q,associated(p,a),associated(q,a)
  deallocate(q)
  q=>p  ! This is a pointer association, data not copied
  print '(2i5,5x,2l2)',p,q,associated(p,a),associated(q,a)
  p=>b
  print '(2i5,5x,2l2)',p,q,associated(p,a),associated(q,a)
  print *
  allocate(q)
  q=3
  p=>q
  print '(2i5,5x,2l2)',p,q,associated(p,q),associated(q,p)
  deallocate(q) ! What happens to p that points to q?
  print '(i10,5x,2l2)',p,associated(p,q),associated(q,p)
  print *
end program pointer5
