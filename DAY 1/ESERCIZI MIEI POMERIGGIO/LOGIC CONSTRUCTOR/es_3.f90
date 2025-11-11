PROGRAM logics

    IMPLICIT NONE
    
    REAL :: x1, x2, a, b, c

    print *, "INSERISCI I VALORI DELL'EQUAZIONE:"
    print *, "1) a:"
    read *, a
    print *, "2) b:"
    read *, b
    print *, "3) c:"
    read *, c

    x1 = resolve_positive_eq(a, b, c)
    x2 = resolve_negative_eq(a, b, c)

    print *, "LE SOLUZIONI DELL'EQUAZIONE SONO:"
    print *, "X1 = ", x1
    print *, "X2 = ", x2

    STOP

    CONTAINS

    REAL FUNCTION resolve_positive_eq(a, b, c)
        IMPLICIT NONE

        real :: a, b, c

        resolve_positive_eq = (-b + SQRT(b**2 - 4.0*a*c)) / (2.0*a)
    END FUNCTION resolve_positive_eq

    REAL FUNCTION resolve_negative_eq(a, b, c)
        IMPLICIT NONE

        real :: a, b, c

        resolve_negative_eq = (-b - SQRT(b**2 - 4.0*a*c)) / (2.0*a)
    END FUNCTION resolve_negative_eq

END PROGRAM logics