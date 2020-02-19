program main
  implicit none
  integer:: ios
  character(len=10):: file

  write(*,'(/,A)') " File name? "
  read(*,*) file
  
  open(unit=11,file=trim(file), status='old',action='read',err=12,iostat=ios)
  
12 close(11)

  if (ios /= 0) then
     write(*,'(/,A,A,A)') "The file ", trim(file), " does not exist, creating ..."
     open(unit=11,file=trim(file),status='new',action='write')
     write(11,'(/,T10,A,/)') "Hiii !!!"
  else
     write(*,'(/,A,A,A)') "The file ", trim(file), " exists, so you can read it ..."
  endif

  write(*,'(/,A)') "Let's close it ! "
  
  close(11)


end program main
  
