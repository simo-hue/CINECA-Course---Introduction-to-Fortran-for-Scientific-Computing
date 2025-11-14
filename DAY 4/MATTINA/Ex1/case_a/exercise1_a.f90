PROGRAM pointer_association_test
    IMPLICIT NONE

    REAL, POINTER :: pointer_a => NULL (), pointer_b => NULL ()   ! due puntatori
    REAL, TARGET :: a, b ! due variabili "target"

    ! --- Stato iniziale ---
    PRINT *, "Stato iniziale:"
    PRINT *, "pointer_a associato? ", ASSOCIATED ( pointer_a )
    PRINT *, "pointer_b associato? ", ASSOCIATED ( pointer_b )

    ! --- Associazione ai target ---
  
    a = 10.01
    a = 20.02

    pointer_a => a
    pointer_b => b

    PRINT *, ""
    PRINT *, "Dopo associazione:"
    PRINT *, "pointer_a associato? ", ASSOCIATED ( pointer_a )
    PRINT *, "pointer_b associato? ", ASSOCIATED ( pointer_b )

    ! --- Dereferenziazione dei puntatori (accedere al valore puntato) ---
    PRINT *, ""
    PRINT *, "Valori puntati:"
    PRINT *, "pointer_a ->", pointer_a
    PRINT *, "pointer_b ->", pointer_b

    ! --- Modifica tramite puntatore --- dove cambia solo il contenuto
    pointer_a = 99.9
    pointer_b = 77.7

    PRINT *, ""
    PRINT *, "Dopo modifica tramite puntatori:"
    PRINT *, "a =", a
    PRINT *, "b =", b

    ! --- Dissociazione dei puntatori ---
    NULLIFY ( pointer_a )
    NULLIFY ( pointer_b )

    PRINT *, ""
    PRINT *, "Dopo dissociazione:"
    PRINT *, "pointer_a associato? ", ASSOCIATED ( pointer_a )
    PRINT *, "pointer_b associato? ", ASSOCIATED ( pointer_b )

    ! --- Test di dereferenziazione dopo NULLIFY (fallisce se non protetto) ---
    PRINT *, ""
    PRINT *, "Tentativo di accesso a pointer_a dopo NULLIFY (evitato con controllo):"
    IF (ASSOCIATED ( pointer_a )) THEN
        PRINT *, "pointer_a ->", pointer_a
    ELSE
        PRINT *, "ERRORE: pointer_a non associato!"
    END IF

END PROGRAM pointer_association_test

