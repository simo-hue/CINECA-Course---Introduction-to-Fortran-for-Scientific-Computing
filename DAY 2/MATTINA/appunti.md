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


---

## MODULI

Unità di programmazione che viene utilizzata per:
• definire i dati e loro strutture;
• definire tutte le operazioni operanti sui suddetti dati e strutture;
• definire  altre  procedure  (sottoprogrammi)  utilizzate  dal  programma  (module 
procedures)


Anche utilizzate per fare DATA HIDING

### sintassi

MODULE nome

IMPLICIT NONE

END MODULE none

---

### importante
Il modulo **NON ESEGUE**, ma solo per **APRIRE LA CONDIVISIONE DI VARIABILI/PROCEDURE**

**BUONA NORMA:** mettere '[SAVE]' prima delle dichiarazione di dati da condividere

---

### chiamata

PROGRAM nome1

USE nomeModulo ( per Use Association avrò accesso alle dichiarazioni del modulo )
...
END PROGRAM nome1

Può essere chiamato da più sotto-programmi ma NON può fare USE di se stesso

---

### precisazioni esplicite della precisione delle variabili

- **SELECTED_INT_KIND(x) ->** tipo intero con x cifre significative
- **SELECTED_REAL_KIND(x, y) ->** tipo REAL con x cifre di precisione ed esponente tra +y e -y

può avere un CONTAINS, dopo il quale andiamo a definire procedure

## restringere accesso al contenuto di un modulo
- private -> non sarà disponibile ad unità di programmazione esterne al modulo ( procedure del modulo le vedono chiaramente )
- public -> di default ( tutti vedono )
- protected -> solamente read only

## compilazione

gfortan -c SEMPRE PRIMA IL MODULO main.f90 -o executable

e viene generato un file .mod [ non sono uno standard e quindi diventa difficile la portabilità ]

fpm ( fortran package manager ) vuole risolvere/aiutare in questo [ il pip per fortran ]

---

## interfaccia

'''
interface
    body1
    body2
end interface
'''

posso andare ad inserire illimitate interfacce di procedure/subroutines

è il chiamante che apre l'interfaccia

solitamente vengono inserite nei moduli per essere ereditate dai moduli

si possono aprire interfacce con altri linguaggi di programmazione come C o Python con iso_c_binding per trasformare una scrittura di una procedura in C in una in FORTRAN.


---


## LA VISIBILITÀ - Scope e ambito

capacità di accedere ai contenuti, che dipende sia
- dal punto in cui sono definite
- dal tipo di attributi che io assegno ( PUBLIC - PRIVATE - PROTECTED )

Quindi ho il contesto ( una sorta di scatola ) che rappresenta una **SCOPING UNIT**.