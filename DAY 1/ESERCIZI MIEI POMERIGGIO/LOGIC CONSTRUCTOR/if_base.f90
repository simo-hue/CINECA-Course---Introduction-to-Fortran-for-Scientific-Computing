PROGRAM logics

    IMPLICIT NONE
    
    INTEGER :: iostat, a = 0, i
    CHARACTER(500) :: filename

    PRINT *, 'Enter the name of the file to process:'

    READ *, filename

    OPEN(22, FILE=filename, STATUS="OLD", ACTION="WRITE", IOSTAT=iostat)

    IF (iostat >= 0) THEN
        PRINT *, "Il file non esiste o non si puo' aprire in scrittura."

        DO i = 2, 100, 2
            a = a + i
            print *, a
        END DO
    ELSE
        PRINT *, "Il file esiste e si puo' aprire in scrittura."
    END IF

    STOP

END PROGRAM logics