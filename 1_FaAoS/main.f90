program main
  use test
  implicit none

  real :: matrix(1:5,1:5)
  integer:: i,j
  
  call build_matrix(matrix,fun)

  do i = 1,5
     write(*,'(5F5.1)') (matrix(i,j),j=1,5)
  enddo
  
end program main
