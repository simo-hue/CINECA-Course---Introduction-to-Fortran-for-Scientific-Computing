PROGRAM test_intrinsic
CHARACTER (LEN=60) :: string1

string1= "   modulo funzioni intrinseche    "
WRITE(*,"(A)") string1

!Scrivere a video il risultato della funzione ADJUSTL sulla variabile string1
WRITE(*,"(A)") ADJUSTL(string1)

!Scrivere a video il risultato della funzione ADJUSTR sulla variabile string1
WRITE(*,"(A)") ADJUSTR(string1)

!Scrivere a video il risultato della funzione INDEX sulla variabile string1 ricercando al suo interno la stringa "in"
WRITE(*,*) "Prima occorrenza di 'in'                                       ", INDEX(string1,"in")

!Scrivere a video il risultato della funzione LEN_TRIM sulla variabile string1
WRITE(*,*) "Lunghezza della stringa tolti gli spazi di coda                ", LEN_TRIM(string1)

!Scrivere a video il risultato della funzione SCAN sulla variabile string1 ricercando al suo interno la stringa "oit"
WRITE(*,*) "Prima occorrenza di uno dei caratteri 'oit'                    ", SCAN(string1,"oit")

!Scrivere a video il risultato della funzione VERIFY sulla variabile string1 ricercando al suo interno la stringa "modulo"
WRITE(*,*) "Prima occorrenza di uno dei caratteri non compresi in ' modulo'", VERIFY(string1," modulo")

END PROGRAM test_intrinsic

