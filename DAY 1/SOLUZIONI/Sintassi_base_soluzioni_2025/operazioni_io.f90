PROGRAM OpPred
   IMPLICIT NONE
   REAL :: a, b, c, d
   REAL :: g, h, r, s
   REAL :: t1, t2
   REAL :: x, y, z
   CHARACTER(80) :: testo
   
   OPEN(FILE="variabili.txt",UNIT=111)
   READ(111, *) a, b, c, d, g, h, r, s
   WRITE(*,"(1X, A)") "Le variabili sono:"
   WRITE(*,"(1X, A, F7.3)") "a = ", a
   WRITE(*,"(1X, A, F7.3)") "b = ", b
   WRITE(*,"(1X, A, F7.3)") "c = ", c
   WRITE(*,"(1X, A, F7.3)") "d = ", d
   WRITE(*,"(1X, A, F7.3)") "g = ", g
   WRITE(*,"(1X, A, F7.3)") "h = ", h
   WRITE(*,"(1X, A, F7.3)") "r = ", r
   WRITE(*,"(1X, A, F7.3)") "s = ", s
   PRINT*

   WRITE(*,*) "Risultati delle operazioni: "
   x = ((a+b)**2+(3*c)**2)**(a/b)
   WRITE(*,"(1X, A, F7.3)") "x = ", x

   y = ((a*b)/(c+d)-g/(5*(h+x)))**(1/r)
   WRITE(*,"(1X, A, F7.3)") "y = ", y
   
   z = x + y/(s*a+b*b)
   WRITE(*,"(1X, A, F7.3)") "z = ", z

   STOP
END PROGRAM OpPred
