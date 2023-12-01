program devrandom

  !-----------------------------------------------------------!
  !                                                           !
  ! Demonstration of use of Linux random number devices.      !
  ! /dev/random  : blocks, if not enough entropy              !
  ! /dev/urandom : never blocks                               !
  !                                                           !
  ! Reads 'iter' times an array or 'nr' integers of kind      !
  ! 'bk' and prints them to stdout. In order to get positive  !
  ! numbers, sign bit of the number is zeroed.                !
  !                                                           !
  !    A.Kuronen, 2020                                        !
  !                                                           !
  !-----------------------------------------------------------!
  
  implicit none
  character (len=80) :: argu,rdev='/dev/random',msg
  integer(8) :: i,n,nr,is,iter,rsum=0

  integer,parameter :: bk=selected_int_kind(8)
  integer(bk),allocatable :: rn(:)
  integer,parameter :: SIGNBIT=bit_size(rn)-1   ! Used to zero the RN signbit
  integer,parameter :: RN_MAX=huge(rn)
  logical :: just_sum=.false.

  if (command_argument_count()/=2) then
     call get_command_argument(0,argu)
     write(0,'(a,a,a)') 'Usage: ',trim(argu),' nr iter'
     stop
  endif
  
  call get_command_argument(1,argu); read(argu,*) nr
  call get_command_argument(2,argu); read(argu,*) iter
  if (nr<0) then
     nr=-nr
     just_sum=.true.
  end if
  allocate(rn(nr))

  open(unit=1,file=rdev,form='unformatted',access='stream',action='read',iostat=is,iomsg=msg)
  if (is/=0) then
     write(0,'(a,a)') 'Error opening file ''',trim(rdev),'''.'
     write(0,'(a)') trim(msg)
     stop
  end if

  do i=1,iter
     read(1,iostat=is,iomsg=msg) rn
     if (is/=0) then
        write(0,'(a,a,a,10x,i0)') trim(rdev),': ',trim(msg),i
     else
        rn=ibclr(rn,SIGNBIT)
        if (just_sum) then
           rsum=rsum+sum(rn)
        else
           print '(1000i20)',(rn(n),n=1,nr)
        end if
     end if
  end do
  close(1)
  if (just_sum) print '(a,i0)','sum ',rsum
  
end program devrandom
