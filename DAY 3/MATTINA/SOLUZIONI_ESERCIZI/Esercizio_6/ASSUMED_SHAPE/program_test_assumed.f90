PROGRAM test_assumed
IMPLICIT NONE
REAL, DIMENSION(2) :: a 
REAL, DIMENSION(2) :: b 

a =(/4.,5./)
b =(/10.,11./)

Call swap (a,b)

PRINT*, 'a ', a, 'b ', b

CONTAINS

SUBROUTINE swap(a, b)
REAL, DIMENSION(:),INTENT(INOUT) :: a, b
REAL,DIMENSION(size(a)) :: temp ! automatic array: local explicit-shape array with nonconstant bounds
temp = a
a = b
b = temp
END SUBROUTINE swap             
ENDPROGRAM test_assumed
