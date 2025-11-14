program database
   use person_type, only : person_t, show 
   use date_type, only : date_t 
   implicit none

   type(person_t) :: p

   p%name = 'Black'
   p%surname = 'Francis'
   p%birthday = date_t(6,4,1965)
   p%birthplace = 'Boston-Massachussets-USA'

   call show(p)

end program
