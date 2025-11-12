! Taken from Chapman, 'Fortran for Scientists', Ch. 6 (2018).
program bounds
   implicit none

   real, dimension(5) :: a = [ 1., 2., 3., 4., 5. ]
   real, dimension(5) :: b
   integer :: i

   do i = 1, 5
      b(i) = sqrt(a(i))
      write (*,'(a,f6.3,a,f14.4)') 'sqrt(',a(i), ') = ', b(i)
   end do
end program bounds
