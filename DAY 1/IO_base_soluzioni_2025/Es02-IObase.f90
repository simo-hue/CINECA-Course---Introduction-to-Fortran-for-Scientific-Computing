PROGRAM LetScr
   IMPLICIT NONE
   INTEGER :: n, st
   CHARACTER(80) :: r
   
   WRITE(*,*,IOSTAT=st) "Immetti un intero"
   READ(*,*,IOSTAT=st) n
   WRITE(*,*) "IOSTAT(READ) = ",st
   WRITE(*,*,IOSTAT=st) "Hai immesso ",n
   
   WRITE(*,*,IOSTAT=st) "Scrivi qualcosa"
   READ(*,*,IOSTAT=st) r
   WRITE(*,*) "IOSTAT(READ) = ",st
   WRITE(*,*,IOSTAT=st) "Hai scritto ",r   

   STOP
END PROGRAM LetScr
