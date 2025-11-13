PROGRAM test_allocatable
IMPLICIT NONE
SAVE
REAL, DIMENSION(:), ALLOCATABLE :: a 
REAL, DIMENSION(:), ALLOCATABLE :: b 
INTEGER :: n,i
CHARACTER(LEN=20) :: error = "dimension too large "

DO
  PRINT*, 'Insert dimension'
  READ*, n

  IF (n > 7) THEN
       PRINT*, error
       EXIT
  ELSE
       ALLOCATE(a(n),b(n))
  
       PRINT*, 'Insert elements of a array'
       READ*, (a(i), i=1,n)
  
       PRINT*, 'Insert elements of b array'
       READ*, (b(i), i=1,n)
  
       CALL swap (a,b)
  
       PRINT*, 'a ', a, 'b ', b
  
       DEALLOCATE (a,b)

  ENDIF

ENDDO
      
CONTAINS 

SUBROUTINE swap(a, b)
REAL, DIMENSION(:),INTENT(INOUT) :: a, b
REAL, DIMENSION(size(a)) :: work ! automatic array: local explicit-shape array with nonconstant bounds
work = a
a = b
b = work
END SUBROUTINE swap             
ENDPROGRAM test_allocatable
