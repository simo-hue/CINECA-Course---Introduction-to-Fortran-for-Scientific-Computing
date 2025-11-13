PROGRAM test_prog
USE test_mod
IMPLICIT NONE   
REAL, PARAMETER :: PI        = 3.1415926

REAL, DIMENSION(2,3) :: arr1 
arr1= RESHAPE((/ 10.0, 40.0, 20.0, 50.0, 30.0, 60.0 /),(/2,3/))

! convert degrees to radians
arr1=PI/arr1

WRITE(*, '(A19, 6(F6.3))') ' arr1 in radianti   ', arr1
WRITE(*, '(A19, 6(F6.3))') ' seno(arr1)         ', seno(arr1)
WRITE(*, '(A19, 6(F6.3))') ' arcoseno(arr1)     ', arcoseno(arr1)

WRITE(*, '(A19, 6(F6.3))') ' coseno(arr1)       ', coseno(arr1) 
WRITE(*, '(A19, 6(F6.3))') ' arcocoseno(arr1)   ', arcocoseno(arr1)

WRITE(*, '(A19, 6(F6.3))') ' tangente(arr1)     ', tangente(arr1)
WRITE(*, '(A19, 6(F6.3))') ' arcotangente(arr1) ', arcotangente(arr1)


END PROGRAM test_prog
