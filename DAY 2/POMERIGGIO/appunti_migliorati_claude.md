# Array Allocabili e Gestione della Memoria in Fortran

## Caratteristiche Fondamentali degli Array

Gli array in Fortran sono **collezioni omogenee** di variabili dello stesso tipo di dato. A differenza di altri linguaggi, Fortran utilizza l'**indicizzazione base-1** (gli indici partono da 1 anziché da 0).

### Ciclo di Vita degli Array

Gli array vengono:
- **Allocati** all'inizio dello scope in cui sono dichiarati
- **Deallocati automaticamente** quando si esce dallo scope

```fortran
subroutine esempio()
    integer :: array(10)  ! Allocato all'ingresso della subroutine
    ! ... codice ...
end subroutine  ! Deallocato all'uscita
```

## Contiguità in Memoria

La **contiguità fisica** degli elementi in memoria è una caratteristica fondamentale per le prestazioni:

- Gli array Fortran sono memorizzati in blocchi contigui di memoria
- Questo garantisce un accesso molto più rapido grazie alla **località spaziale**
- La CPU può sfruttare meglio la cache, riducendo i tempi di accesso

> ⚡ **Performance Tip**: L'accesso sequenziale agli array contigui è ordini di grandezza più veloce rispetto all'accesso sparso.

### Ordinamento Column-Major

**⚠️ ATTENZIONE**: Fortran memorizza gli array **per colonne** (column-major order), a differenza del C che usa il row-major order.

```fortran
real :: matrice(3, 4)  ! 3 righe, 4 colonne

! Ordine in memoria: matrice(1,1), matrice(2,1), matrice(3,1), 
!                     matrice(1,2), matrice(2,2), ...
```

**Implicazione pratica**: Per ottimizzare le prestazioni, è meglio iterare prima sull'indice di riga:

```fortran
! ✓ OTTIMALE (segue l'ordine in memoria)
do j = 1, ncols
    do i = 1, nrows
        matrice(i, j) = ...
    end do
end do

! ✗ SUBOTTIMALE (accesso non sequenziale)
do i = 1, nrows
    do j = 1, ncols
        matrice(i, j) = ...
    end do
end do
```

## Inizializzazione degli Array

**⚠️ Comportamento di default**: Fortran **NON inizializza automaticamente** gli array a zero. Il contenuto iniziale è indeterminato.

### Soluzioni per l'Inizializzazione

1. **Inizializzazione esplicita nel codice**:
```fortran
array = 0
```

2. **Flag di compilazione**:
```bash
gfortran -finit-local-zero programma.f90
```

---

# Processo di Compilazione e Linking

Il comando `gfortran` esegue internamente **quattro fasi distinte**:

## 1. Pre-processamento
- Gestisce le direttive del preprocessor (macro, include, direttive condizionali)
- **Non obbligatoria** secondo lo standard Fortran
- Si attiva automaticamente usando l'estensione **`.F90`** (maiuscola) invece di `.f90`

```bash
# File .F90 viene pre-processato automaticamente
gfortran programma.F90
```

## 2. Compilazione
Trasforma il codice sorgente in linguaggio assembly specifico per l'architettura target.

## 3. Assemblaggio
Converte il codice assembly in **codice oggetto** (file binari non eseguibili).

## 4. Linking
Collega i file oggetto e le librerie per produrre l'**eseguibile finale**.

---

## Compilazione Modulare

### Generazione di File Oggetto

La flag `-c` interrompe il processo **prima del linking**, producendo solo file oggetto:

```bash
gfortran -c modulo1.f90  # Produce modulo1.o
gfortran -c modulo2.f90  # Produce modulo2.o
gfortran -c main.f90     # Produce main.o
```

I file oggetto (`.o`) sono:
- **File binari** non leggibili direttamente
- **Rilocabili** ma non eseguibili
- Utilizzabili per il linking successivo

### Linking Manuale

Per creare l'eseguibile finale dai file oggetto:

```bash
gfortran modulo1.o modulo2.o main.o -o programma
# oppure usando il glob pattern
gfortran *.o -o programma
```

**Vantaggi della compilazione modulare**:
- ✓ Ricompilazione solo dei file modificati
- ✓ Tempi di build ridotti per progetti grandi
- ✓ Maggiore flessibilità nella gestione delle dipendenze

---

## Schema Riassuntivo del Processo di Compilazione

```
Sorgente (.f90/.F90)
         ↓
   Pre-processore
         ↓
    Compilatore
         ↓
     Assembler
         ↓
  File Oggetto (.o)
         ↓
      Linker
         ↓
    Eseguibile
```