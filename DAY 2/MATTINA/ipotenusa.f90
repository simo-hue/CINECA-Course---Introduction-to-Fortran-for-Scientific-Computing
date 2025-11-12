PROGRAM hypo
    IMPLICIT NONE 

    REAL :: a, b, hypotenuse

    print *, "Enter the lengths of the two sides of the right triangle: "
    READ *, a
    READ *, b

    CALL calc_hypo(a, b, hypotenuse)

    print *, "Calculating the hypotenuse of a right triangle with sides ", a, " and ", b
    print *, "The hypotenuse is ", hypotenuse

    CONTAINS

    SUBROUTINE calc_hypo(a, b, hypotenuse)
        IMPLICIT NONE

        REAL, INTENT(IN) :: a, b
        REAL, INTENT(OUT) :: hypotenuse

       hypotenuse = SQRT(a**2 + b**2)

   END SUBROUTINE calc_hypo        

END PROGRAM hypo    
