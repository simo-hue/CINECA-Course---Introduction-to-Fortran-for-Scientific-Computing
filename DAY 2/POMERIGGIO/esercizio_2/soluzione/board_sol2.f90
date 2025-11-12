program checkerboard
   implicit none
   integer, parameter :: N = 8 ! Only even N works here
   integer :: i
   character(len=1) :: board(N,N) = reshape( [(['B','W'],i=1,N**2/2)], [N,N] ) 
   integer :: shifts(N) = [([0,1],i=1,N/2)] 
   board = cshift(board, SHIFT=shifts, DIM=1)
   do i = N, 1, -1
      write(*,'(*(ax))')  board(:,i)
   enddo
end program 
