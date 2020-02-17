program main
  use omp_lib
  implicit none
  integer:: threads, thread
  character(len=2):: JOB
  !
  ! Number of available threads:
  threads = omp_get_max_threads()
  !
  write(*,'(A,I2,A)') "There are ", threads, " available threads... USE THEM!"
  !
#ifdef _OPENMP
  !$OMP PARALLEL PRIVATE(thread,JOB),SHARED(threads)
  !$OMP SECTIONS
  !
  !$OMP SECTION
  thread = omp_get_thread_num()
  write(JOB,*) "A"
  write(*,'(3A,I2,A,I2)') "Job ",JOB," from thread ", thread," /",threads
  !$OMP SECTION
  thread = omp_get_thread_num()
  write(JOB,*) "B"
  write(*,'(3A,I2,A,I2)') "Job ",JOB," from thread ", thread," /",threads
  !$OMP SECTION
  thread = omp_get_thread_num()
  write(JOB,*) "C"
  write(*,'(3A,I2,A,I2)') "Job ",JOB," from thread ", thread," /",threads
  !
  !$OMP END SECTIONS
  !$OMP END PARALLEL
#endif
  
end program main

