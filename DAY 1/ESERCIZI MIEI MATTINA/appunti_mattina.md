# Guida Completa a Fortran

## Struttura Base di un Programma

Un programma Fortran classico ha la seguente struttura:
```fortran
PROGRAM nome_programma
    ! Dichiarazioni di variabili
    ! Codice del programma
    STOP  ! Buona pratica per interrompere il programma prima di chiuderlo
END PROGRAM nome_programma
```

**Nota importante**: Tutte le variabili devono essere dichiarate all'inizio del programma, altrimenti si otterrà un ERRORE.

## Sottoprogrammi

### FUNCTION
Una funzione prende uno o più input e restituisce un singolo output:
```fortran
FUNCTION nome_funzione(parametri) RESULT(output)
    ! Dichiarazioni
    ! Codice
END FUNCTION nome_funzione
```

### SUBROUTINE
Le subroutine sono pezzi di codice che possono restituire zero o più risultati:
```fortran
SUBROUTINE nome_subroutine(parametri)
    ! Dichiarazioni
    ! Codice
END SUBROUTINE nome_subroutine
```

### MODULE
I moduli possono contenere dichiarazioni di variabili, funzioni e subroutine. Vengono poi dichiarati nel programma principale:
```fortran
MODULE nome_modulo
    ! Dichiarazioni di variabili, funzioni, subroutine
END MODULE nome_modulo

PROGRAM main
    USE nome_modulo
    ! Codice
END PROGRAM main
```

## Dichiarazione delle Variabili

### Regole per i Nomi
- Il nome **NON** deve iniziare con un numero
- Fortran è **case INSENSITIVE** (maiuscole e minuscole sono equivalenti)

### IMPLICIT NONE
È **fondamentale** utilizzare `IMPLICIT NONE` all'inizio di ogni programma/modulo/funzione:
```fortran
IMPLICIT NONE
```

Questo impedisce a Fortran di assumere automaticamente il tipo di variabile dall'iniziale del nome (comportamento obsoleto e pericoloso).

### Sintassi Base di Dichiarazione
```fortran
tipo :: nome_variabile = valore_iniziale
```

Esempi:
```fortran
INTEGER :: n = 10
REAL :: x = 3.14
CHARACTER(LEN=20) :: nome = "Fortran"
LOGICAL :: flag = .TRUE.
```

## Precisione e KIND

### Specificare la Precisione
Il parametro `KIND` viene utilizzato per specificare la precisione desiderata:
```fortran
REAL(KIND=real64) :: x
! oppure
REAL(8) :: x  ! 8 byte = precisione doppia
```

### Portabilità del Codice
Per garantire la portabilità su diverse piattaforme:

#### KIND()
Restituisce il KIND di una variabile:
```fortran
REAL(KIND=KIND(1.0D0)) :: a  ! Usa lo stesso KIND di 1.0D0 (doppia precisione)
```

#### SELECTED_INT_KIND(x)
Seleziona un KIND per interi con range da -10^x a 10^x:
```fortran
INTEGER(KIND=SELECTED_INT_KIND(9)) :: grande_intero  ! Range: -10^9 a 10^9
```

#### SELECTED_REAL_KIND(p, r)
Seleziona un KIND per numeri reali:
- `p` = numero di cifre decimali significative
- `r` = range dell'esponente (da 10^-r a 10^r)
```fortran
REAL(KIND=SELECTED_REAL_KIND(15, 307)) :: precisione_alta
! 15 cifre decimali, esponente fino a 10^307
```

Valido anche per numeri complessi:
```fortran
COMPLEX(KIND=SELECTED_REAL_KIND(10, 100)) :: z
```

## Parametri Costanti

Per dichiarare una variabile non modificabile, utilizzare l'attributo `PARAMETER`:
```fortran
REAL, PARAMETER :: PI = 3.14159265359
INTEGER, PARAMETER :: MAX_SIZE = 1000
```

## Funzioni Intrinseche Utili

### Informazioni sui Tipi Numerici
```fortran
RANGE(x)     ! Restituisce il range (min e max) del tipo
HUGE(x)      ! Restituisce il numero più grande rappresentabile
TINY(x)      ! Restituisce il numero più piccolo rappresentabile (> 0)
```

Esempi:
```fortran
INTEGER :: i
REAL :: r

PRINT *, "Range intero:", RANGE(i)
PRINT *, "Intero più grande:", HUGE(i)
PRINT *, "Reale più piccolo:", TINY(r)
```

## Numeri Complessi

I numeri complessi si definiscono con la notazione `(parte_reale, parte_immaginaria)`:
```fortran
COMPLEX :: z
z = (3.0, 4.0)  ! 3 + 4i

! Funzioni utili per complessi:
PRINT *, REAL(z)     ! Parte reale
PRINT *, AIMAG(z)    ! Parte immaginaria
PRINT *, ABS(z)      ! Modulo
PRINT *, CONJG(z)    ! Coniugato
```

## Array e Matrici

### Dichiarazione
```fortran
TIPO, DIMENSION(righe, colonne) :: nome_array
```

Esempi:
```fortran
INTEGER, DIMENSION(10) :: vettore
REAL, DIMENSION(3, 4) :: matrice  ! 3 righe, 4 colonne
```

### ⚠️ IMPORTANTE: Ordinamento in Memoria

**Fortran memorizza gli array per COLONNA, NON per riga** (a differenza di C o Python).

Questo significa che:
- Gli elementi di una colonna sono contigui in memoria
- Per ottimizzare le prestazioni, iterare prima sulle righe, poi sulle colonne
```fortran
! EFFICIENTE (accesso per colonna)
DO j = 1, n_col
    DO i = 1, n_row
        matrice(i, j) = i + j
    END DO
END DO

! INEFFICIENTE (accesso per riga)
DO i = 1, n_row
    DO j = 1, n_col
        matrice(i, j) = i + j
    END DO
END DO
```

### Stampa di Matrici

Quando si stampa una matrice, Fortran la visualizza per colonne:
```fortran
REAL, DIMENSION(2, 3) :: mat
mat = RESHAPE([1, 2, 3, 4, 5, 6], [2, 3])  ! Riempie per colonna

PRINT *, mat
! Output: 1 2 (prima colonna)
!         3 4 (seconda colonna)
!         5 6 (terza colonna)
```

**Suggerimento**: Per ottenere un comportamento simile a C/Python, sfruttare la trasposta:
```fortran
PRINT *, TRANSPOSE(mat)  ! Stampa come se fosse ordinata per riga
```

## Esempio Completo
```fortran
PROGRAM esempio_completo
    USE, INTRINSIC :: ISO_FORTRAN_ENV, ONLY: real64
    IMPLICIT NONE
    
    ! Dichiarazioni
    INTEGER, PARAMETER :: N = 3
    REAL(real64), DIMENSION(N, N) :: matrice
    INTEGER :: i, j
    
    ! Inizializzazione matrice (per colonna, efficiente!)
    DO j = 1, N
        DO i = 1, N
            matrice(i, j) = REAL(i * j, real64)
        END DO
    END DO
    
    ! Stampa
    PRINT *, "Matrice:"
    DO i = 1, N
        PRINT *, matrice(i, :)
    END DO
    
    STOP
END PROGRAM esempio_completo
```

## Riepilogo Buone Pratiche

1. ✅ Usare sempre `IMPLICIT NONE`
2. ✅ Dichiarare tutte le variabili all'inizio
3. ✅ Usare `PARAMETER` per le costanti
4. ✅ Specificare `KIND` per portabilità
5. ✅ Ricordare che Fortran usa ordinamento per colonna
6. ✅ Iterare sugli array nell'ordine corretto per efficienza
7. ✅ Usare `STOP` prima di `END PROGRAM`