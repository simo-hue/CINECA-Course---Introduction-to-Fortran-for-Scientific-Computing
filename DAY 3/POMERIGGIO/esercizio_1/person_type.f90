module person_type
   use date_type
   implicit none

   type person_t
      type(date_t) :: birthday
      CHARACTER(len=80) :: name
      CHARACTER(len=80) :: surname
      CHARACTER(len=80) :: birthplace
   end type person_t

contains
  
   subroutine show(x)
      type(person_t), intent(in) :: x

      print *, "name: ", x%name, " surname: ", x%surname, &
               " birthplace: ", x%birthplace, &
               !" birthday: ", x%birthday%get_day, "/", x%birthday%get_day, "/", x%birthday%get_day
               " birthday: ", x%birthday%d, "/", x%birthday%m, "/", x%birthday%y
   end subroutine show

end module person_type
