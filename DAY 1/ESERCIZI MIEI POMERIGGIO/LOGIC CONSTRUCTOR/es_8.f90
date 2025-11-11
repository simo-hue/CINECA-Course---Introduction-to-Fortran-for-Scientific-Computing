PROGRAM logics

    IMPLICIT NONE
    INTEGER :: i, ll
    INTEGER, PARAMETER :: max_len = 10
    
    ! --- CORREZIONE 1: Dichiarazione ---
    ! Questo era un ARRAY di 10 caratteri (lunghi 1)
    ! CHARACTER :: stringa(max_len) 
    
    ! Questa è UNA stringa (scalare) lunga 10 caratteri
    CHARACTER(LEN=max_len) :: stringa

    
    PRINT *, "Inserire una stringa da convertire in maiuscolo (max ", max_len, " caratteri):"
    
    ! --- CORREZIONE 2: Variabile mancante nel READ ---
    READ (*,'(A)') stringa

    ! Ora questo funziona, perché 'stringa' è uno scalare
    ll = LEN_TRIM(stringa)

    write (*, "(A, I2)") "lunghezza max. concessa = ", max_len
    write (*, "(A, I2)") "lunghezza utilizzata = ", ll

    scorritoreStringa: DO i = 1, ll
    
        ! Ora questa sintassi è corretta: 'stringa(i:i)'
        ! significa "la sottostringa dal carattere i al carattere i"
        charsel: SELECT CASE (stringa(i:i))
            CASE ('a':'z')
                ! --- CORREZIONE 3: Typo (string -> stringa) ---
                stringa(i:i) = ACHAR(IACHAR(stringa(i:i)) - 32)
            CASE DEFAULT
                CYCLE
        END SELECT charsel
    END DO scorritoreStringa

    ! Aggiungo TRIM per rimuovere gli spazi finali e una etichetta
    WRITE(*, '(A,A)') "Stringa convertita: ", TRIM(stringa)
    
    STOP

END PROGRAM logics