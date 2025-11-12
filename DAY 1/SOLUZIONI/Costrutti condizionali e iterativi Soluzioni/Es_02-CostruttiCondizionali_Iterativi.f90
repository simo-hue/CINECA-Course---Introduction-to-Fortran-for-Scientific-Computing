PROGRAM triangolo 
IMPLICIT NONE
REAL :: primo, secondo, terzo 

WRITE (*,*) 'Inserisci le lunghezze dei tre lati del triangolo ' 
READ (*,*) primo, secondo, terzo 

IF (primo == secondo .AND. secondo == terzo) THEN
   WRITE (*,*) 'Equilatero'
ELSE  IF (primo == secondo .OR. secondo == terzo .OR. primo == terzo) THEN 
   WRITE (*,*) 'Isoscele' 
ELSE 
   WRITE (*,*) 'Scaleno'  
END IF 

STOP
END PROGRAM triangolo
