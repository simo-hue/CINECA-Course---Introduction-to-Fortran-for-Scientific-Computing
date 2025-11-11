PROGRAM coordinate

    IMPLICIT NONE
    
    CHARACTER(500) :: batch
    
    READ'(A)', batch
    PRINT *, "ecco che cosa hai scritto: ", batch

    STOP

END PROGRAM coordinate