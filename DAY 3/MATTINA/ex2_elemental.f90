PROGRAM test_elemental
IMPLICIT NONE

REAL, DIMENSION(4) :: a, b

! Array
a = [1.0, 2.0, 3.0, 4.0]
b = [5.0, 6.0, 7.0, 8.0]

 PRINT*, 'a ', a, "|", 'b ', b
  
  ! Passo Array che vengono interpretati come scalari elementari
  CALL swap (a,b)

 PRINT*, 'a ', a, "|", 'b ', b
  
      
CONTAINS 

ELEMENTAL SUBROUTINE swap(a, b)
REAL,INTENT(INOUT) :: a, b
REAL :: work ! automatic array: local explicit-shape array with nonconstant bounds

work = a
a = b
b = work
END SUBROUTINE swap             
ENDPROGRAM test_elemental