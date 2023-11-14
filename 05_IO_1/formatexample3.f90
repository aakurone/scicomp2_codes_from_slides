program formatexample3
  implicit none
  integer :: a(3,3)

  read(5,*) a
  
  print '(/,''A '',20(''-''))'
  print '(9i4)',a
  print '(/,''B '',20(''-''))'
  print '(9(i0,x))',a
  print '(/,''C '',20(''-''))'
  print '(3i4)',a
  print '(/,''D '',20(''-''))'
  print '(3(3(i0,x),/))',a

end program formatexample3
