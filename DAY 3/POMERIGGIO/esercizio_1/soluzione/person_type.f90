module person_type
   use date_type, only : date_t
   implicit none

   type person_t
      character(20) :: name
      character(20) :: surname
      type(date_t)  :: birthday
      character(60) :: birthplace 
   end type person_t

contains
  
   subroutine show(p)
      implicit none
      type(person_t), intent(in) :: p
      write(*,'(3x,60("="))') 
      write(*,'(3x,"Name        : ",a20)') p%name
      write(*,'(3x,"Surname     : ",a20)') p%surname
      write(*,'(3x,"Born on the : ",i0.2,"/",i0.2,"/",i4)') p%birthday%d, p%birthday%m, p%birthday%y
      write(*,'(3x,"Born in     : ",a60)') p%birthplace
      write(*,'(3x,60("="))') 
   end subroutine

end module person_type
