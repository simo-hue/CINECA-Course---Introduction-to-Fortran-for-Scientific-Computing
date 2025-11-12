PROGRAM tavola_pitagorica 
IMPLICIT NONE 
INTEGER :: n    ! il dato letto da tastiera 
INTEGER :: i,j  ! indici dei cicli

WRITE (*,*) 'Inserisci un intero positivo: ' 
READ (*,*) n 
WRITE (*,*) 'Tavola pitagorica da 1 a ', n, ': ' 

esterno: DO i = 1, n 
   interno: DO j = 1, n 
      WRITE (*,*) i, ' * ', j, ' = ', i*j 
   END DO interno 
END DO esterno

STOP 
END PROGRAM tavola_pitagorica




