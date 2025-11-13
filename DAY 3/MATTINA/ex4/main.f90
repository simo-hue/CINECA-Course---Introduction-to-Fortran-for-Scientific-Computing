PROGRAM test_maxval
USE generic_maxval
IMPLICIT NONE
! Data dictionary: declare variable types & definitions
INTEGER, DIMENSION(6) :: array_i ! Integer array
REAL(KIND=SGL), DIMENSION(6) :: array_r ! Sng prec real arr
INTEGER :: value_max_i ! Max value
REAL(KIND=SGL) :: value_max_r ! Max value
INTEGER :: pos_maxval ! Pos of max value
! Initialize arrays
array_i = [ -13, 3, 2, 0, 25, -2 ]
array_r = [ -13., 3., 2., 0., 25., -2. ]

! Test integer subroutine. Include optional argument.

CALL maxval( array_i, 6, value_max_i, pos_maxval )

WRITE (*,1000) value_max_i, pos_maxval
1000 FORMAT ('Integer args: max value = ',I3, &
'; position = ', I3 )

! Test single prec real subroutine. Leave out optional arg.

CALL maxval( array_r, 6, value_max_r, pos_maxval )

WRITE (*,1010) value_max_r , pos_maxval
1010 FORMAT ('Single precision real args: max value = ',F7.3, '; position = ', I3 )

END PROGRAM test_maxval
