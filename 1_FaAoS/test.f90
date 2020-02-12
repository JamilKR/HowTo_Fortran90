module test
  implicit none
contains
  subroutine build_matrix(matrix,fun)
    implicit none
    real,intent(inout):: matrix(:,:)
    real,external:: fun
    integer::i,j
    integer,dimension(1:2)::ulim,llim

    matrix=0.0e0

    llim=lbound(matrix)
    ulim=ubound(matrix)
    
    do i = llim(1),ulim(1)
       do j = llim(2),ulim(2)
          !
          matrix(i,j) = fun(i,j)
          !
       enddo
    enddo

  end subroutine build_matrix
  !
  function fun(a,b)
    implicit none
    integer,intent(in):: a,b
    real:: fun

    fun = real(a*b)

  end function fun
  !
end module test
    
