# INTRODUZIONE ALLE PROCEDURE ( sotto-programmi )

- ESTERNE -> da completare
- INTERNE -> da completare

HOST-UNIT -> da completare

## SUBROUTINES
- UNITÀ CHIAMANTE usa istruzione 'CALL' alla quale vengono solitamente restituiti più parametri

## FUNCTION
- UNITÀ CHIAMANTE usa istruzione con il nome della funzione e restituisce un solo valore

## MODULES
- UNITÀ DI PROGRAMMAZIONE totalmente indipendenti dal resto ( blocchi di codice a se stanti ), utili per condividere entità di programmazione ad esempio:
    - variabili
    - module procedures ( procedure/funzioni interne al modulo )

- UNITÀ CHIAMANTE usa istruzione 'USE' nomeModulo e così si acquista visibilità di tutte le cose che abbiamo inserito nel modulo


---

# CLASSICO PROGRAMMA FORTRAN

ha un solo main program, ma poi un numero illimitato di procedure e moduli



## PROCEDURE
### INTERNE
Bisogna inserire **'CONTAINS'**

Eredita per host association tutto quello che è dichiarato nella host unit

### ESTERNA
Non serve inserire 'CONTAINS', viene inserita dopo l' 'END-PROGRAM' oppure proprio in un altro file separato ( come per le librerie ) che poi vanno linkate.

tutte le variabili devono essere ridichiarate nella procedura esterna ( non ha nessuna visibilità )

## SUBROUTINE
### BY REFERENCE
quindi puntano all'indirizzo di memoria alle quali sono contenute ( effettivi [variabili], mentre fittizzi [pointers] )

Ecco perchè è importante che ci sia coerenza tra i parametri effettivi e fittizzi sia nel numero ma anche nel tipo

**FORTEMENTE CONSIGLIATO:** Utilizzare gli stessi nomi sia per parametri effettivi che fittizzi

Si possono anche dichiarare delle variabili locali che servono temporaneamente per il calcolo ( PERSE poi all'uscita ).
Se volessi salvarle all'uscita allora devo aggiungere attributo **'SAVE'** in fase di dichiarazione

funzioni trigonometriche vogliono sempre e solo gli angoli in radianti e non in gradi

usa l'istruzione RETURN per tornare all'unita chiamante invece che eseguire le altre istruzioni

## ATTRIBUTO INTENT
da utilizzare in fase di dichiarazione delle variabili per le subroutine

- **INTENT(IN) ->** Variabile di input [ non ci viene concesso di fare modifiche all'interno della procedura ]
- **INTENT(OUT) ->** Variabile di output [ ci viene concesso di fare modifiche all'interno della procedura ]
- **INTENT(INOUT) ->** Variabile sia di output che di input

che è una sorta di check ulteriore che richiediamo che il compilatore faccia per noi [ DEBUG AVANZATO PRATICAMENTE ]

fortran'''
SUBROUTINE Somma(a,b,c)
IMPLICIT NONE
REAL, INTENT(OUT) :: c
REAL, INTENT(IN) :: a, b
c = a + b
RETURN
END SUBROUTINE Somma'''

## FUNCTION
### sintassi
tipo FUNCTION nome (lista argomenti fittizzi )
END FUNCTION nome

c'è il tipo perchè specifico il TIPO DI RITORNO del valore

---

### chiamata

variabile = nome (lista argomenti fittizzi ) [ dove la variabile deve essere di tipo UGUALE ]

---

### ritorno

può essere restituito qualunque tipo di variabile tra le 5 di fortran:
- INTEGER
- REAL
- valore logico
- array
- stringa

---


## COMPILAZIONE
## SEPARATA
produco prima i 2 file oggetto
gfortran -c sub.f90 main.f90

e solamente poi vado a linkarli assieme
gfortran 


## IMMEDIATA

gfortran -c sub.f90 main.f90 -o eseguibile

e posso già eseguire l'eseguibile che è stato generato