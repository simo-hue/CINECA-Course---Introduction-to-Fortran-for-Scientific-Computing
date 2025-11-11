PROGRAM articolato
   IMPLICIT NONE

   REAL :: n, m, s
   INTEGER, PARAMETER :: LS=80
   CHARACTER(LS) :: nome, testo
   
   PRINT *, "Qual e' il tuo nome?"
   READ *, nome
     
   testo = "Il tuo nome e' "//TRIM(nome)//" e "
   
   n = 2; m = 3
   CALL SOMMA(s, n, m)
   
   PRINT *, TRIM(testo), n, " + ", m, " = ", s

   STOP
END PROGRAM articolato


SUBROUTINE SOMMA(r, a, b)
   IMPLICIT NONE
   REAL :: r, a, b
   
   r = a + b
   
   RETURN
END SUBROUTINE

