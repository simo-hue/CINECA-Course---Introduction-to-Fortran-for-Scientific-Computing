program database
   use person_type
   implicit none

   character(len=20) :: filename = 'db.dat'
   type(person_t), allocatable :: db(:)
   integer :: ie, ierr
   integer :: nentries = 0

   open(unit=11, file=filename, action='read', iostat=ierr)
   if (ierr==0) then
      write(*,'(/,3x,"Reading data from : ",a,/)') filename
   else
      write(*,'(/,3x,"ERROR while reading data from : ",a,/)') filename
      stop
   endif
   do
      read(11,*,iostat=ierr)
      if (ierr/=0) exit
      nentries = nentries + 1
   enddo

   allocate( db(nentries) )

   rewind 11
   do ie = 1, nentries
      read(11,*) db(ie)
   enddo
   close(11)

   write(*,*)
   write(*,'(3x,"**********************************")')
   write(*,'(3x,"         Database entries         ")')
   write(*,'(3x,"**********************************")')
   write(*,*)

   do ie = 1, nentries
      call show(db(ie))
   enddo

end program
