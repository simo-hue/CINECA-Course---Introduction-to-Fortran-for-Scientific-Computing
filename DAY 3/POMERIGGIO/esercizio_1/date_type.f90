module date_type
   implicit none
   
   type :: date_t
      integer :: d
      integer :: m
      integer :: y
   end type date_t

   contains

   subroutine get_day(x)
      type(date_t), intent(in) :: x

      print *, x%d
      
   end subroutine get_day
   
   subroutine get_month(x)
      type(date_t), intent(in) :: x

      print *, x%m

   end subroutine get_month
   
   subroutine get_year(x)
      type(date_t), intent(in) :: x

      print *, x%y

   end subroutine get_year

end module date_type
