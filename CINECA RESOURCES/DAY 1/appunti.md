Classico programma:
PROGRAM
END PROGRAM

Tutto dichiarato all'inizio del programma ( variabili, altrimenti ERRORE )

STOP ( buona pratica per interrompere il programma prima di chiuderlo )

FUNZIONE: prende input e poi restituisce un output -> FUNCTION ... END FUNCTION

SUBROUTINE sono dei pezzi di codice che restituiscono zero o pià risultati

MODULI possono contenere anche dichiarazioni di variabili e viene dichiarato poi nel main il modulo


---------- COME DICHIARARE LE VARIABILI ----------

nome NON deve iniviare con un numero

è case IN-SENSITIVE

IMPLICIT NONE -> non dichiarare il tipo di variabile ma veniva preso dall'iniziale della variabile. Questo viene messo per evitare che il programma assuma cose non vere sui tipi delle variabili

ESEMPIO BASE: tipo :: variabile = valore

KIND viene utilizzata per specificare la precisione che si vuole utilizzare

REAL(KIND=real64) oppure READL(8) dove 8 rappresenta i byte da utilizzare

per assicurare la portabilità del codice si utilizzano:
- KIND()
- SEELCTED_INT_KIND(x) -> da -10^x a 10^x
- SEELCTED_REAL_KIND(x,y) -> x = numero cifre decimali, y = espontente | per reali e numeri complessi tra  e


KIND restituisce il formato/tipo di una variabile e per questo si fa ad esempio: REAL(KIND=KIND(1.0D0)) :: a


Se pceficio variabile con attributo PARAMETER non è modificabile

ESEMPI FUNZIONI INTRINSECHE DI FORTRAN:
range() -> min e max
huge() -> numero più grande
tiny() -> numero più piccolo

complessi definiti così: a=(3,4) con parte reale e complessa

------- fortran legge per colonna e NON per riga come c o python ( SFRUTTRARE LA STRASPOSTA ) -------

------- matrici -----
TIPO, DIMENSION(riga, colonna) :: nome

Stampo per colonna ( invece che una riga )

