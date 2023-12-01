program intrinsicmodules
  use,intrinsic :: iso_fortran_env
  use,intrinsic :: iso_c_binding
  use,intrinsic :: ieee_arithmetic
  use,intrinsic :: ieee_features
  use,intrinsic :: ieee_exceptions
  implicit none
  character(len=20) :: fmt='(a35,6i6)',fmt1='(a35,l6)'
  real(c_float) :: x
  real(c_double) :: y
  real(c_long_double) :: z

  print '(//,a)','iso_fortran_env'
  print fmt,'atomic_int_kind',atomic_int_kind
  print fmt,'atomic_logical_kind',atomic_logical_kind
  print fmt,'character_kinds',character_kinds
  print fmt,'character_storage_size',character_storage_size
  print fmt,'error_unit',error_unit
  print fmt,'file_storage_size',file_storage_size
  print fmt,'input_unit',input_unit
  print fmt,'integer_kinds',integer_kinds
  print fmt,'int8',int8
  print fmt,'int16',int16
  print fmt,'int32',int32
  print fmt,'int64',int64
  print fmt,'iostat_end',iostat_end
  print fmt,'iostat_eor',iostat_eor
  print fmt,'iostat_inquire_internal_unit',iostat_inquire_internal_unit
  print fmt,'logical_kinds',logical_kinds
  print fmt,'numeric_storage_size',numeric_storage_size
  print fmt,'output_unit',output_unit
  print fmt,'real_kinds',real_kinds
  print fmt,'real32',real32
  print fmt,'real64',real64
  print fmt,'real128',real128
  print fmt,'stat_locked',stat_locked
  print fmt,'stat_unlocked',stat_unlocked
  print fmt,'stat_locked_other_image',stat_locked_other_image
  print fmt,'stat_stopped_image',stat_stopped_image
  print *
  

  print '(//,a)','iso_c_binding'
  print fmt,'c_int8_t',c_int8_t
  print fmt,'c_int16_t',c_int16_t
  print fmt,'c_int32_t',c_int32_t
  print fmt,'c_int64_t',c_int64_t
  print fmt,'c_float',c_float
  print fmt,'c_double',c_double
  print fmt,'c_long_double',c_long_double


  print '(//,a)','ieee_arithmetics'
  print fmt1,'ieee_support_datatype(x)',ieee_support_datatype(x)
  print fmt1,'ieee_support_datatype(y)',ieee_support_datatype(y)
  print fmt1,'ieee_support_datatype(z)',ieee_support_datatype(z)
  print fmt1,'ieee_support_denormal(x)',ieee_support_denormal(x)
  print fmt1,'ieee_support_denormal(y)',ieee_support_denormal(y)
  print fmt1,'ieee_support_denormal(z)',ieee_support_denormal(z)


end program intrinsicmodules

