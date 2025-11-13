PROGRAM test_elemental
IMPLICIT NONE
REAL, DIMENSION(2) :: a = (/1.,2./)
REAL, DIMENSION(2) :: b = (/4.,5./)

! Poichè usiamo una procedura ELEMENTAL non possiamo definire ARRAY ALLOCABILI

Call swap (a,b)

Print*, 'a ', a, 'b ', b

      
CONTAINS        

ELEMENTAL SUBROUTINE swap(a,b)
REAL, INTENT(INOUT) :: a, b
REAL :: work
work = a
a = b
b = work
END SUBROUTINE swap             
ENDPROGRAM test_elemental
