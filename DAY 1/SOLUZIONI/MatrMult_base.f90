SUBROUTINE SimpleMatmul(A,B,C,l,m,n)
   IMPLICIT NONE
   INTEGER :: l, m, n
   REAL(8) :: A(l,m), B(m,n), C(l,n)
   
   INTEGER  :: i, j, k, kc, s

   DO i = 1, l
      DO j = 1, n
         C(i,j) = 0.0
         DO k = 1, m
            C(i,j) = C(i,j) + A(i,k) * B(k,j)
         END DO
      END DO
   END DO

   RETURN      
END SUBROUTINE SimpleMatmul

PROGRAM MatrMult 
   IMPLICIT NONE
   REAL(8), DIMENSION(500,500) :: A, B, C
   INTEGER :: L
   REAL ::   cput2, cput1

   INTEGER :: i, j, k
   
   L=500

   DO i = 1, L
      DO k = 1, L
         A(k,i) = REAL(i-k) / REAL(i+k)
         B(k,i) = 0.01 * REAL(k-i) / REAL(k+i)
      END DO
   END DO

   CALL CPU_TIME(cput1)
   
   CALL SimpleMatmul(A,B,C,L,L,L)

   CALL CPU_TIME(cput2)
    
   WRITE(*,"(/A)") "First 10 elements of C:"
   DO i = 1, 10
      WRITE(*,*) C(i,1)
   END DO
   WRITE(*,"(A,F6.3)") "Simple - cpu time is: ",(cput2-cput1)

   STOP
END PROGRAM MatrMult
