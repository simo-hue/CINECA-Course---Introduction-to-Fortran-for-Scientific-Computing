PROGRAM s

    IMPLICIT NONE

    INTEGER :: a, b, risultato

    a = 10
    b = 5

    risultato = somma(a, b)

    print *, risultato

    CONTAINS

    INTEGER FUNCTION somma(a_pointer, b_pointer)

        IMPLICIT NONE

        INTEGER, INTENT(IN) :: a_pointer, b_pointer

        somma = a_pointer + b_pointer

    END FUNCTION somma

END PROGRAM s