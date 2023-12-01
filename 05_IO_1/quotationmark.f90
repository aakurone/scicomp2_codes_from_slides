program quotationmark
  implicit none
  character(len=80) :: a,b,c,form

  form='(''SOF>>'',a,''<<EOS'')'

  a='There''s a '' in this string.'
  b="There's a ' in this string."
  c="There's a "" in this string."

  print form,trim(a)
  print form,trim(b)
  print form,trim(c)

end program quotationmark
