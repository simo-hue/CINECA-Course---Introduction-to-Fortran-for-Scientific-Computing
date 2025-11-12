PROGRAM square_sum
  IMPLICIT NONE

  REAL sq_sum, num

  OPEN (1, FILE = 'square.dat')

  sq_sum = 0.0                     

DO 
  READ (1, '(F4.2)', END=10) num       
  WRITE (*, *) 'number = ', num
  IF (num == 0.0) EXIT     
  IF (num <  0.0) CYCLE  
  sq_sum = sq_sum + SQRT(num)
  WRITE (*,*) 'square_sum =', sq_sum
END DO

10  PRINT '(/)'
  PRINT *,'The solution is:'
  WRITE (*,*) sq_sum

  STOP
END PROGRAM square_sum



