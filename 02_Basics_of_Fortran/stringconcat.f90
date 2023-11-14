program stringconcat
  implicit none
  character(len=20) :: a,b,c,d
  a='aaaaa'
  b='bbbbb'
  c=a//b
  d=trim(a)//trim(b)
  print *,'*',a,'*'
  print *,'*',b,'*'
  print *,'*',c,'*'
  print *,'*',d,'*'
end program stringconcat
