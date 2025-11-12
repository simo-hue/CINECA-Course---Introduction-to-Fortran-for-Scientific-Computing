program matmul_showdown
   use iso_fortran_env, only: int64
   implicit none
   integer, parameter :: nrep = 3
   integer(int64) :: c1, c2, count_rate
   integer :: irep
   
   integer, parameter :: n = 1000 
   real    :: a(n,n), b(n,n), c(n,n)
   integer :: i, j, k

   write(*,'(/,3x,a,i12/)') 'c = a * b,    n = ', n

   call init_arrays(a, b)

   call system_clock(c1, count_rate)
   do irep = 1, nrep
      c = 0.

      do j = 1,n   
         do k = 1,n   
            do i = 1,n   
               c(i,j) = c(i,j) + a(i,k) * b(k,j)
            enddo
         enddo
     enddo
      
   enddo
   call system_clock(c2)
   write(*,'(3x,a11,a30,3f16.8)') 'My matmul :', 'c(1,1), c(2,2), c(n,n) = ', c(1,1), c(2,2), c(n,n)
   write(*,'(3x,a11,a30, f16.8)') 'My matmul :', 'time (ms) = ', 1.d3*(dble(c2-c1)/count_rate)/nrep

   c = 0.
   call system_clock(c1, count_rate)
   do irep = 1, nrep
    
      c = matmul(a, b)
   
   enddo
   call system_clock(c2)
   write(*,'(3x,a11,a30,3f16.8)') 'MATMUL    :', 'c(1,1), c(2,2), c(n,n) = ', c(1,1), c(2,2), c(n,n)
   write(*,'(3x,a11,a30, f16.8)') 'MATMUL    :', 'time (ms) = ', 1.d3*(dble(c2-c1)/count_rate)/nrep

contains

   subroutine init_arrays(mat_a, mat_b)
      implicit none
      real    :: mat_a(:,:), mat_b(:,:)
      integer :: i, j, n
      logical :: correct_dimensions
      integer :: shape_a(2), shape_b(2) 
      
      shape_a = shape(a)
      shape_b = shape(b)
      correct_dimensions = all(shape_a==shape_b) .and. (shape_a(1)==shape_a(2)) 

      if (correct_dimensions) then

         n = shape_a(1)

         do j = 1, n
            do i = 1, n
               mat_a(i,j) = dble(i-j) / n 
               mat_b(i,j) = dble(i+j) / n 
            enddo
         enddo
      else
         write(*,*) 'ERROR: init_arrays, wrong matrices dimensions.'
         stop
      endif
   end subroutine 
 
end program matmul_showdown
