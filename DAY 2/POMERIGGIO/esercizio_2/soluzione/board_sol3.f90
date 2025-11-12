program checkerboard
   implicit none
   integer, parameter :: N = 8
   character(len=1) :: board(N,N)  = 'W'
   integer :: i, j
   do i = 1, N
      do j = 1, N
         if (mod(i+j,2)==0) board(i,j) = 'B'
      enddo
   enddo
   do i = N, 1, -1
      write(*,'(*(ax))')  board(:,i)
   enddo
end program 
