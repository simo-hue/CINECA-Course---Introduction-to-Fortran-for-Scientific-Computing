PROGRAM prime_equazioni

   IMPLICIT NONE

   REAL(8) :: a, b, c, x, y, z, d, g, h, r
   INTEGER, PARAMETER :: LS=1000
   CHARACTER(LS) :: risultato
   
   PRINT *, "Variabile a:"
   READ *, a
   
   PRINT *, "Variabile b:"
   READ *, b
   
   PRINT *, "Variabile g:"
   READ *, g
   
   PRINT *, "Variabile d:"
   READ *, d
   
   PRINT *, "Variabile c:"
   READ *, c
   
   PRINT *, "Variabile h:"
   READ *, h
   
   PRINT *, "Variabile z:"
   READ *, z
   
   PRINT *, "Variabile r:"
   READ *, r
     
   x = prima_eq (a, b, c)
   y = seconda_eq (a, b, c, d, g, h, r, x)
   
   risultato = "Il risultato dell'equazione e': "

   PRINT *, risultato(1:28), "prima = ((a+b)**2 + (3.0_8*c)**2)**(a/b) ", risultato(29:34), x
   PRINT *, risultato(1:28), "seconda = ((a*b)/(c+ d) - (g)/(5*(h + x)))**1/r ", risultato(29:34), y
   PRINT *, risultato(1:28), "terza = x + (y)/(z*a + b**2) ", risultato(29:34), y
   
   PRINT *, x + (y)/(z*a + b**2)

   STOP

   CONTAINS

   REAL(8) FUNCTION prima_eq(a, b, c)
      IMPLICIT NONE
      REAL(8) :: a, b, c

      prima_eq = ((a+b)**2 + (3.0_8*c)**2)**(a/b)
   END FUNCTION prima_eq

   REAL(8) FUNCTION seconda_eq(a, b, c, d, g, h, r, x)
      IMPLICIT NONE
      REAL(8) :: a, b, c, d, g, h, r, x

      seconda_eq = ((a*b)/(c+ d) - (g)/(5*(h + x)))**1./r 
   END FUNCTION seconda_eq

END PROGRAM prime_equazioni