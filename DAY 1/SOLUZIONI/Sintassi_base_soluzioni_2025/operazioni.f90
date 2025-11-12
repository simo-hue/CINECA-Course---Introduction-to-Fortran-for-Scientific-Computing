PROGRAM Operazioni
   IMPLICIT NONE
   REAL :: a, b, c, d
   REAL :: g, h, r, s
   REAL :: x, y, z
   
   a = 1.2
   b = 5.4
   c = 7.0
   d = 1.0
   g = 12.4
   h = 11.0
   r = 3.5
   s = 2.1

   WRITE(*,*) "Risultati delle operazioni: "
   x = ((a+b)**2+(3*c)**2)**(a/b)
   WRITE(*,"(1X, A, F7.3)") "x = ", x

   y = ((a*b)/(c+d)-g/(5*(h+x)))**(1/r)
   WRITE(*,"(1X, A, F7.3)") "y = ", y
   
   z = x + y/(s*a+b*b)
   WRITE(*,"(1X, A, F7.3)") "z = ", z

   STOP
END PROGRAM Operazioni
