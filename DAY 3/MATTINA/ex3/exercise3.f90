PROGRAM test_prog
USE test_mod
IMPLICIT NONE   
integer :: i,j

REAL, DIMENSION(2,3) :: arr1 

! Da array a matrice
arr1= RESHAPE((/ 10.0, 20.0, 30.0, 40.0, 50.0, 60.0 /),(/2,3/))

! convert degrees to radians

WRITE(*, '(A19, 6(F10.3))') ' arr1         ', arr1

WRITE(*, '(A19, 6(F10.3))') ' seno         ', seno(arr1)
WRITE(*, '(A19, 6(F10.3))') ' arcoseno     ', arcoseno(seno(arr1))

END PROGRAM test_prog
