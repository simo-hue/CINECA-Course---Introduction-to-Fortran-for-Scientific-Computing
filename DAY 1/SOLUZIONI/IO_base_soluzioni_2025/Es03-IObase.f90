PROGRAM LetScr
   IMPLICIT NONE
   INTEGER :: n, st
   CHARACTER(80) :: r
   
   OPEN(11,FILE="Es03_out.txt",IOSTAT=st)
   WRITE(*,*) "IOSTAT(OPEN) = ",st
   WRITE(*,*,IOSTAT=st) "Immetti un intero"
   READ(*,*,IOSTAT=st) n
   WRITE(*,*) "IOSTAT(READ) = ",st
   WRITE(11,*,IOSTAT=st) "Hai immesso ",n
   
   WRITE(*,*,IOSTAT=st) "Scrivi qualcosa"
   READ(*,"(A)",IOSTAT=st) r
   WRITE(*,*) "IOSTAT(READ) = ",st
   WRITE(11,*,IOSTAT=st) "Hai scritto ",r
   
   CLOSE(11,IOSTAT=st)
   WRITE(*,*) "IOSTAT(CLOSE) = ",st

   STOP
END PROGRAM LetScr
