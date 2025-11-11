🖥️ Fortran per il Calcolo Scientifico (HPC) - Corso CINECA 2025

Questa repository contiene i miei appunti personali, gli esercizi svolti e i progetti sviluppati durante il corso "Introduction to Fortran for Scientific Computing" tenuto da CINECA (Bologna, 11-14 Novembre 2025), per il quale sono stato selezionato.

Link Utili

Pagina Ufficiale del Corso (Evento): Descrizione, agenda e obiettivi formativi.

Repository UFFICIALE del Corso (Materiali): Repository GitLab di CINECA con le slide, i testi degli esercizi e il materiale didattico ufficiale.

🎯 Obiettivo e Relazione con la Repository Ufficiale

La repository ufficiale di CINECA (linkata sopra) contiene il materiale didattico, le slide e i testi degli esercizi forniti dai docenti.

Questa repository, invece, serve come mio diario di bordo e spazio di lavoro. Qui caricherò:

Le mie soluzioni personali agli esercizi proposti.

Script di prova e codice di test scritti durante lo studio.

Appunti personali e approfondimenti sui vari moduli.

Eventuali progetti finali o riepilogativi.

L'obiettivo è tracciare i miei progressi e creare un portfolio personale del lavoro svolto.

🗂️ Struttura della Repository

Per mantenere l'ordine, la repository segue una struttura a cartelle che ricalca i moduli del corso e della repository ufficiale:

.
├── 01_Introduction/            # Appunti e test sulla storia e i fondamenti
├── 02_Language_Basics/         # Esercizi su tipi di dati, variabili, I/O
├── 03_Control_Flow/            # Esercizi su IF, DO, SELECT CASE
├── 04_Arrays/                  # Soluzioni per esercizi sugli array
├── 05_Procedures/              # Esercizi su Subroutine e Function
├── 06_Modules/                 # Codice su Modules e organizzazione
├── 07_Advanced_Data/           # Esercizi su Derived Types e Allocatables
├── 08_Modern_Fortran/          # Test su Pointers, OO e Coarrays
├── Progetti/                   # Eventuali progetti riepilogativi
└── README.md                   # Questo file



📚 Topics Principali Trattati

Come da programma del corso, questa repository conterrà codice relativo a:

Evoluzione del Linguaggio: Dal Fortran 77 al Fortran 2018.

Fondamenti: Tipi di dati (integer, real, complex, character, logical), operatori, I/O formattato e non.

Controllo del Flusso: Costrutti IF, SELECT CASE e loop DO.

Array: Gestione e sintassi "array-oriented" (fondamentale in HPC).

Modularizzazione: SUBROUTINE, FUNCTION e l'uso di MODULE per organizzare codice e dati.

Tipi Dati Moderni: Tipi derivati (simili alle struct in C) e gestione dinamica della memoria (ALLOCATABLE).

Funzionalità Avanzate: Pointers, cenni di programmazione Object-Oriented e parallelismo base con Coarrays.

🛠️ Ambiente e Compilazione

Il compilatore di riferimento per gli esercizi è gfortran (GNU Fortran), parte della GNU Compiler Collection (GCC).

Compilazione Base

Per compilare un singolo programma (es. programma.f90):

gfortran -o programma programma.f90
./programma



Compilazione Consigliata (Standard Moderno e Debugging)

Per abilitare i controlli di standard, warning e flag di debugging:

gfortran -std=f2008 -Wall -Wextra -fcheck=all -g -o programma programma.f90



-std=f2008: Forza l'aderenza allo standard Fortran 2008.

-Wall -Wextra: Abilita tutti i warning principali.

-fcheck=all: Abilita controlli a runtime (es. array bounds, allocazioni).

-g: Include i simboli di debugging.

Per progetti più complessi che coinvolgono file multipli e moduli, verranno utilizzati Make o CMake.

🙏 Ringraziamenti

Un ringraziamento speciale a CINECA e ai docenti del corso per questa opportunità formativa nel campo dell'High Performance Computing.