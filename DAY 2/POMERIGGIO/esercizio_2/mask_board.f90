program checkerboard
   implicit none

   integer :: i, j
   integer, parameter :: n = 8
   REAL, dimension(N,N) :: board(n,n) = 0.0
   LOGICAL, dimension(N,N) :: boardBoolean(n,n) = .FALSE.

   boardBoolean(1:n:2, 1:n:2) = .TRUE.
   boardBoolean(2:n:2, 2:n:2) = .TRUE.
   
   WHERE(boardBoolean) board = 2.0

   ! STAMPA
   do i = 1, n
      write(*,'(*(f4.1x))') board(:,i)
   end do

end program 

