PROGRAM semplice
   IMPLICIT NONE

   REAL :: n, m
   INTEGER, PARAMETER :: LS = 40
   CHARACTER(LS) :: nome 
   
   PRINT *,"Qual e' il tuo nome?"
   READ *, nome
   
   n = 2; m = 3
   
   PRINT *, "Il tuo nome e' ", nome
   PRINT *, " e ", n, " + ", m, " = ", (n + m)

   STOP
END PROGRAM semplice
! Fine del programma semplice.f90