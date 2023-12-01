program derivedtype3
  implicit none
  type :: record
     character(10) :: name
     integer,allocatable :: n(:)
  end type record
  type (record) :: rec
  rec%name="test"
  allocate(rec%n(4))
  rec%n=[4,3,2,1]
  print '(a,10i3)',rec%name,rec%n
end program derivedtype3
