PROGRAM logics

    IMPLICIT NONE
    
    INTEGER, PARAMETER :: len = 100
    CHARACTER(LEN=len) :: filename = "square.dat"
    REAL :: tmp, sum = 0.0

    OPEN(UNIT=11, FILE=filename, STATUS="replace", ACTION="readwrite")

    tmp = -1.0 ! valore iniziale per entrare nel ciclo

    ciclo: DO WHILE ( tmp /= 0.0)
        PRINT *, "Inserisci un numero reale (0 per terminare):"
        READ *, tmp

        ! CONDIZIONE DA CONTROLLARE
        IF (tmp > 0.0) THEN
            sum = sum + SQRT(tmp)
            WRITE(11, *) "valore inserito: ", tmp, "somma parziale: ", sum
        ELSE IF (tmp < 0.0) THEN
            CYCLE
        ELSE IF (tmp == 0.0) THEN
            EXIT ciclo
        END IF
        
        PRINT *, "Inserisci un numero reale (0 per terminare):"
        READ *, tmp

    END DO ciclo

    CLOSE(11) ! chiusura del file

    STOP

END PROGRAM logics