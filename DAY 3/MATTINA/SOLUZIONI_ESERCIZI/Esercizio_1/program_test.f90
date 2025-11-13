PROGRAM test_pass_array
USE assumed_shape_array,  ONLY : declare_arr 
IMPLICIT NONE
REAL, DIMENSION(3,3) :: a = 2.
REAL, DIMENSION(2,2) :: b = 1.

CALL declare_arr(a)
CALL declare_arr(b)

ENDPROGRAM test_pass_array
