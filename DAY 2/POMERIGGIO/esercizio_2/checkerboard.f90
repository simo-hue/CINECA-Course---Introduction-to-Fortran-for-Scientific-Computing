program checkerboard
   implicit none

   integer :: i, j
   integer, parameter :: n = 8
   character(len=1) :: board(n,n)


   board = 'W'

   board(1:n:2, 1:n:2) = 'B'
   board(2:n:2, 2:n:2) = 'B'
   
   
   ! STAMPA
   do i = 1, n
      write(*,'(*(ax))')  board(:,i)
   end do

end program 

