program board_mask
   implicit none
   integer, parameter :: N = 8
   logical :: checkerboard(N,N) = .true.
   real, dimension(N,N) :: a = 2.
   integer :: i

   do i = N, 1, -1
      write(*,'(*(f4.1x))') a(:,i)
   enddo


   checkerboard( 1:N:2, 1:N:2 ) = .false. 
   checkerboard( 2:N:2, 2:N:2 ) = .false. 

   ! Controllo che la matrice maschera sia true e faccio allora modifiche
   where(checkerboard) a = 0.
   
   do i = N, 1, -1
      write(*,'(*(f4.1x))') a(:,i)
   enddo

end program 
