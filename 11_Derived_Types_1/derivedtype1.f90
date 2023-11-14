program derivedtype1
  implicit none
  integer,parameter :: MAXBUF=10
  type :: record
     character(MAXBUF) :: name
     integer :: count
     real :: value
  end type record
  type (record) :: rec(3)
  integer :: i
  character(30) :: fm
  fm='(''||'',10(a,''||''))'

  rec(1)=record('qwerty',10,sqrt(2.0))
  rec(2)=record('asdfgh',20,sqrt(3.0))
  rec(3)=record('zxcvbn',30,sqrt(4.0))

  print fm,rec%name
  print fm,(trim(rec(i)%name),i=1,3)
  rec(1)%count=1
  print *,rec(1)
  print *,rec%count
  rec%count=[(100*i,i=1,3)]
  print *,rec%count

end program derivedtype1
