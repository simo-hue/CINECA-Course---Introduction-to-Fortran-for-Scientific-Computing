# INTRODUZIONE ALLE PROCEDURE (Sottoprogrammi)

## Tipologie di Procedure

### Procedure Esterne
Procedure definite **al di fuori** della host unit (programma principale), dopo l'istruzione `END PROGRAM` o in file separati. Non hanno accesso diretto alle variabili del programma principale e richiedono la ridichiarazione esplicita di tutte le variabili necessarie.

### Procedure Interne
Procedure definite **all'interno** della host unit, dopo l'istruzione `CONTAINS`. Ereditano automaticamente tutte le dichiarazioni della host unit tramite **host association**.

### Host Unit
L'unità di programmazione principale che contiene il programma Fortran. Può includere procedure interne tramite l'istruzione `CONTAINS`.

---

## SUBROUTINES

Le **subroutine** sono procedure che vengono invocate tramite l'istruzione `CALL` e possono restituire **multipli parametri** all'unità chiamante attraverso la lista degli argomenti.

### Passaggio dei Parametri: By Reference

I parametri vengono passati **per riferimento**, quindi puntano direttamente all'indirizzo di memoria delle variabili:
- **Parametri effettivi**: le variabili reali passate alla chiamata
- **Parametri fittizi**: i puntatori che referenziano le variabili effettive

**Importante:** È fondamentale mantenere **coerenza tra parametri effettivi e fittizi** sia nel numero che nel tipo di dato.

**Best Practice:** Utilizzare gli stessi nomi per parametri effettivi e fittizi per maggiore chiarezza.

### Variabili Locali

È possibile dichiarare **variabili locali** all'interno delle subroutine per calcoli temporanei. Queste variabili vengono **perse all'uscita** dalla procedura, a meno che non si aggiunga l'attributo `SAVE` durante la dichiarazione.

### Istruzione RETURN

L'istruzione `RETURN` permette di uscire anticipatamente dalla subroutine e tornare all'unità chiamante senza eseguire le istruzioni successive.

### Attributo INTENT

L'attributo `INTENT` specifica il ruolo di ciascuna variabile nella subroutine, fornendo un controllo aggiuntivo in fase di compilazione (debug avanzato):

- **`INTENT(IN)`**: Variabile di **solo input** – non può essere modificata all'interno della procedura
- **`INTENT(OUT)`**: Variabile di **solo output** – destinata a essere modificata dalla procedura
- **`INTENT(INOUT)`**: Variabile di **input/output** – può essere letta e modificata

**Esempio:**
```fortran
SUBROUTINE Somma(a, b, c)
    IMPLICIT NONE
    REAL, INTENT(IN) :: a, b
    REAL, INTENT(OUT) :: c
    
    c = a + b
    RETURN
END SUBROUTINE Somma
```

---

## FUNCTIONS

Le **function** sono procedure che restituiscono un **singolo valore** all'unità chiamante e vengono invocate direttamente tramite il loro nome all'interno di espressioni.

### Sintassi
```fortran
tipo FUNCTION nome(lista_argomenti_fittizi)
    IMPLICIT NONE
    ! Dichiarazioni
    ! ...
    nome = valore_di_ritorno
END FUNCTION nome
```

Il **tipo** specifica il tipo di dato del valore di ritorno.

### Chiamata
```fortran
variabile = nome(lista_argomenti)
```

La variabile ricevente deve essere dello **stesso tipo** del valore restituito dalla function.

### Tipi di Ritorno Supportati

Le function possono restituire qualsiasi tipo di dato Fortran:
- `INTEGER`
- `REAL`
- `LOGICAL` (valori logici)
- Array
- Stringhe di caratteri (`CHARACTER`)

### Note Importanti

- Le **funzioni trigonometriche** in Fortran richiedono angoli espressi in **radianti**, non in gradi

---

## COMPILAZIONE

### Compilazione Separata

Produzione dei file oggetto separatamente, seguita dal linking:
```bash
# Passo 1: Compilazione dei file sorgente
gfortran -c sub.f90 main.f90

# Passo 2: Linking dei file oggetto
gfortran sub.o main.o -o eseguibile
```

### Compilazione Immediata

Compilazione e linking in un unico comando:
```bash
gfortran sub.f90 main.f90 -o eseguibile
```

L'eseguibile generato può essere immediatamente eseguito.

---

## MODULI

I **moduli** sono unità di programmazione indipendenti utilizzate per:
- Definire dati e strutture dati condivise
- Definire operazioni su tali dati
- Definire procedure (module procedures) riutilizzabili
- Implementare il **data hiding** (incapsulamento)

### Sintassi
```fortran
MODULE nome_modulo
    IMPLICIT NONE
    
    ! Dichiarazioni di variabili, tipi, ecc.
    
    CONTAINS
    
    ! Module procedures (opzionale)
    
END MODULE nome_modulo
```

### Caratteristiche Principali

- I moduli **NON vengono eseguiti** direttamente
- Servono esclusivamente per **condividere variabili, tipi e procedure** tra diverse unità di programmazione
- **Best Practice:** Utilizzare l'attributo `SAVE` per le variabili da condividere

### Utilizzo dei Moduli
```fortran
PROGRAM nome_programma
    USE nome_modulo  ! Use association: accesso alle dichiarazioni del modulo
    IMPLICIT NONE
    
    ! Codice del programma
    
END PROGRAM nome_programma
```

**Nota:** Un modulo può essere utilizzato da più sottoprogrammi, ma **non può fare `USE` di se stesso**.

### Controllo dell'Accesso

Attributi per gestire la visibilità degli elementi del modulo:

- **`PRIVATE`**: L'elemento non è disponibile alle unità esterne (solo le procedure del modulo possono accedervi)
- **`PUBLIC`**: L'elemento è accessibile a tutte le unità esterne (comportamento predefinito)
- **`PROTECTED`**: L'elemento è visibile esternamente ma in **sola lettura**

### Precisione delle Variabili

Funzioni intrinseche per definire esplicitamente la precisione:

- **`SELECTED_INT_KIND(x)`**: Tipo intero con `x` cifre significative
- **`SELECTED_REAL_KIND(x, y)`**: Tipo `REAL` con `x` cifre di precisione ed esponente nell'intervallo [-y, +y]

### Compilazione dei Moduli
```bash
# IMPORTANTE: compilare sempre il modulo PRIMA del programma principale
gfortran -c nome_modulo.f90 main.f90 -o eseguibile
```

La compilazione genera un file `.mod` (file di modulo). 

**Nota:** I file `.mod` non sono standardizzati tra diversi compilatori, rendendo difficile la portabilità.

**Soluzione:** **FPM (Fortran Package Manager)** – il gestore di pacchetti per Fortran (simile a `pip` per Python) che risolve i problemi di portabilità e gestione delle dipendenze.

---

## INTERFACCE

Le **interfacce** permettono di dichiarare esplicitamente la firma di procedure esterne o di creare procedure generiche (overloading).

### Sintassi
```fortran
INTERFACE
    ! Body della procedura 1
    ! Body della procedura 2
    ! ...
END INTERFACE
```

### Caratteristiche

- Possono contenere un numero illimitato di dichiarazioni di procedure/subroutine
- Vengono aperte dall'**unità chiamante**
- Solitamente definite all'interno di **moduli** per essere ereditate da altre unità
- Permettono l'**interoperabilità** con altri linguaggi (C, Python) tramite `iso_c_binding`

**Esempio di interoperabilità:**
```fortran
USE, INTRINSIC :: iso_c_binding
```

Consente di interfacciarsi con procedure scritte in C, trasformando la sintassi C in una compatibile con Fortran.

---

## VISIBILITÀ: Scope e Ambito

La **visibilità** (scope) rappresenta la capacità di accedere ai contenuti di un'entità di programmazione e dipende da:

1. **Punto di definizione**: dove l'entità è dichiarata
2. **Attributi assegnati**: `PUBLIC`, `PRIVATE`, `PROTECTED`

### Scoping Unit

Il **contesto** (scoping unit) rappresenta una "scatola" che delimita l'ambito di visibilità delle entità dichiarate al suo interno.

**Tipi di scoping unit:**
- Programma principale
- Procedure (subroutine e function)
- Moduli
- Blocchi di codice

---

## STRUTTURA CLASSICA DI UN PROGRAMMA FORTRAN

Un programma Fortran tipico è composto da:
- **Un solo programma principale** (`PROGRAM`)
- **Numero illimitato** di procedure (subroutine e function)
- **Numero illimitato** di moduli
```fortran
MODULE modulo1
    ! Dichiarazioni e procedure del modulo
END MODULE modulo1

PROGRAM main
    USE modulo1
    IMPLICIT NONE
    
    ! Codice principale
    
    CONTAINS
    
    ! Procedure interne
    
END PROGRAM main

! Procedure esterne (opzionali)
SUBROUTINE procedura_esterna()
    ! ...
END SUBROUTINE procedura_esterna
```