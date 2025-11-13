PROGRAM fibonacci
IMPLICIT NONE
INTEGER :: n, i
INTEGER, SAVE :: conta = 0

WRITE (*, *) "Trasmettere N" 
READ (*, *) n

WRITE (*, *) "La successione di Fibonacci fino a ",n," e':"
DO i = 1, n
   WRITE (*, *) fib(i)
END DO

WRITE (*, *) "La funzione fib e' stata richiamata ", conta, " volte."

CONTAINS
  
RECURSIVE FUNCTION fib(n) RESULT(risultato)

INTEGER, INTENT(in) :: n
INTEGER :: risultato

conta = conta + 1                   

SELECT CASE (n)
CASE (1)                          
risultato = 1
CASE (2)                           
risultato = 1
CASE (3:)
risultato = fib(n-1) + fib(n-2)  
END SELECT

RETURN
END FUNCTION fib

END PROGRAM fibonacci
