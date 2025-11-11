PROGRAM coordinate
    IMPLICIT NONE
    
    INTEGER :: ios
    CHARACTER(500) :: batch
    CHARACTER(100) :: nomeFile = "output.txt"

    ! 1. CHIEDI ALL'UTENTE COSA SCRIVERE
    PRINT *, "Scrivi la frase da salvare nel file:"

    ! 2. ASSEGNA UN VALORE a 'batch' leggendolo dalla tastiera
    READ '(A)', batch

    ! 3. APRI IL FILE (questo mancava)
    OPEN(22, FILE=nomeFile, IOSTAT=ios, STATUS="REPLACE", ACTION="WRITE")

    ! 4. ORA puoi usare 'batch', perché ha un valore
    WRITE(22,'(A)') TRIM(batch)

    PRINT *, "Stato di I/O dopo la scrittura: ", ios

    ! 5. CHIUDI IL FILE (questo mancava)
    CLOSE(22)

    ! 6. Stampa a schermo quello che hai appena letto e scritto
    PRINT *, "Nel file '", TRIM(nomeFile), "' e' stato scritto:"
    PRINT *, TRIM(batch)

    STOP
END PROGRAM coordinate