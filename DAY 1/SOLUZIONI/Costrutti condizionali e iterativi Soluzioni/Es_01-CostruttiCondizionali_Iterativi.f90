PROGRAM max 
IMPLICIT NONE 
INTEGER :: primo, secondo, maggiore 

WRITE (*,*) 'Inserisci due numeri interi' 
READ (*,*) primo, secondo 

IF (primo > secondo) THEN 
  maggiore = primo 
ELSE 
  maggiore = secondo 
END IF 

WRITE (*,*) "Il maggiore dei due valori inseriti e' : ", maggiore 

STOP 
END PROGRAM max
