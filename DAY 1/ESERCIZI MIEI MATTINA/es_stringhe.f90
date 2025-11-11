PROGRAM stringhe

    IMPLICIT NONE
    CHARACTER(400) :: testo
    CHARACTER(400) :: testo1
    CHARACTER(100) :: numero_telefono

    testo1 = "  ciao. "
    PRINT *, "LUNGHEZZA STRINGA: ", LEN(testo1)
    PRINT *, "LUNGHEZZA EFFETTIVA: ", LEN_TRIM(testo1)


    testo = "    ciao, come stai? Te lo chiedevo per curiosità.       "

    PRINT *, "numero di telefono: "
    READ *, numero_telefono

    PRINT *, "numero di telefono inserito: '", numero_telefono, "'"
    PRINT *, VERIFY(numero_telefono, "0123456789+ ")

    PRINT *, "DEFAULT: ", testo
    PRINT *, "CON TRIM: ", TRIM(testo)
    PRINT *, "CON ADJUSTL: ", ADJUSTL(testo)
    PRINT *, "CON ADJUSTR: ", ADJUSTR(testo)
    PRINT *, "CON INDEX: ", INDEX(testo, "ai")
    !PRINT *, "CON LEN_TRIM: ", LEN_TRIM(testo, )
    PRINT *, "CON SCAN: ", SCAN(testo, "a")
    PRINT *, "CON VERIFY: ", VERIFY(testo, "éç")
    
    
END PROGRAM stringhe