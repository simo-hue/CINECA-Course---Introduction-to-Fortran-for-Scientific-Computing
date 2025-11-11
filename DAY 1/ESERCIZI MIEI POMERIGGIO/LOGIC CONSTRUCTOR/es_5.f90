PROGRAM logics

    IMPLICIT NONE
    
    INTEGER :: i = 0, j = 0,n
    
    print *, "inserire un numero come limite superiore"
    read *, n

    pitagora1: DO i = 1, n
        pitagora2: DO j = 1, n
            print *, i, " * ", j, " = ", i*j
        END DO pitagora2
    END DO pitagora1

    
    STOP

END PROGRAM logics