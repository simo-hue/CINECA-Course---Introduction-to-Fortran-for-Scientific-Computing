program checkerboard
   implicit none
   integer, parameter :: N = 8
   character(len=1) :: board(N,N) = 'W' 
   integer :: i
   board( 1:N:2, 1:N:2 ) = 'B'
   board( 2:N:2, 2:N:2 ) = 'B'
   do i = n, 1, -1
      write(*,'(*(ax))')  board(:,i)
   enddo
end program 
