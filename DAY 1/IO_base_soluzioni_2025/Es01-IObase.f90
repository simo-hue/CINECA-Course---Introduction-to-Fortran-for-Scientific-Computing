PROGRAM LetScr
   IMPLICIT NONE
   INTEGER :: n
   CHARACTER(80) :: r
   
   WRITE(*,*) "Immetti un intero"
   READ(*,*) n
   WRITE(*,*) "Hai immesso ",n
   
   WRITE(*,*) "Scrivi qualcosa"
   READ(*,*) r
   WRITE(*,*) "Hai scritto ",r   

   STOP
END PROGRAM LetScr
