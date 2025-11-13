**Esercizio 1.** Si scriva una subroutine, contenuta in un modulo (quindi che abbia un’interfaccia esplicita) che dichiari un _assumed-shape dummy array_ e ne determini dimensione, forma ed estremi di estensione mediante le funzioni intrinseche: LBOUND, UBOUND, SHAPE e SIZE. 
Si scriva anche il _test program_ per la subroutine.

NOTA:
- LBOUND: Returns the lower bounds of an array, or a single lower bound along the DIM dimension (RESULT = LBOUND(ARRAY [, DIM [, KIND]])
- UBOUND: Returns the upper bounds of an array, or a single lower bound along the DIM dimension.
- SHAPE: Determines the shape of an array
- SIZE: Determine the extent of ARRAY along a specified dimension DIM, or the total number of elements in ARRAY if DIM is absent.

**Esercizion 2.** Si scriva un programma che utilizzi 3 subroutines esterne per dimensionare, inizializzare e calcolare elementi di array allocabili: (cosa bisogna fare per non dover riallocare ogni volta l’array?)
- la prima subroutine inizializza una matrice quadrata di dimensioni allocabili, 
- la seconda ne calcola gli elementi come risultato dell’operazione tra i suoi indici: (i-j)/(i+j), 
- la terza stampa il primo blocco di 7x7 elementi della matrice.

**Esercizio 3.** Si scriva un programma che stampi i valori massimo e minimo, e loro posizioni, di un real array utilizzando una subroutine in cui il massimo, il minimo e le loro rispettive posizioni sono argomenti opzionali. La subroutine deve essere definita all'interno di un modulo. 

**Esercizio 4**. Si scriva un programma che usi un modulo contenente subroutines generiche per il calcolo del massimo e, opzionalmente, della sua posizione in un array, per ogni tipo di dato (intero, sp, dp, complex e double complex)

**Esercizio 5.** Si scriva un programma che utilizzi come nell’esempio di slide 47 della lezione «Approfondimenti sulle procedure» la subroutine sub, referenziandola a due subroutine diverse: la prima calcola il prodotto (come nell'esempio) e la seconda la somma delle due variabili x e y

**Esercizio 6**. Si utilizzi la subroutine swap per scambiare gli elementi di due vettori dichiarati come _allocatable arrays_ in un _testing program_

**a)** Si utilizzi una ELEMENTAL subroutine swap per scambiare elementi dei due arrays

**Esercizio 7**. Si crei un insieme di funzioni ELEMENTAL per calcolare il seno, il coseno e la tangente di un angolo θ, misurato in gradi. Si crei, poi, un insieme di funzioni ELEMENTAL per calcolare le funzioni arcoseno, arcocoseno e arcotangente, restituendo i risultati in gradi.


Si testino le funzioni tentando di calcolare il seno, il coseno e la tangente di 2 × 3 array arr1, quindi invertendo i calcoli con le funzioni inverse. 

Array arr1 è definito come segue

``arr1 = [ 10.0 20.0 30.0
         40.0 50.0 60.0]``


a) Si convertano le funzioni ELEMENTAL dell'esercizio 7 in funzioni PURE e si provi nuovamente ad eseguire il programma. Che risultati si ottengono con le funzioni PURE?

**Esercizio 8.**
 Si scriva un programma che calcoli la successione di Fibonacci fino ad un numero n letto da tastiera, richiamando più volte la funzione RECURSIVE fib();

``fib(1)=1
fib(2) = 1
Fib(i) = fib(i-1)+fib(i-2)… i.e.,``

b) Si provi a riscrivere il codice utilizzando una subroutine ricorsiva invece che una function: 
RECURSIVE SUBROUTINE fib(n, risultato, conta)

**Esercizio 9.**
Si scriva una subroutine per calcolare il prodotto di due matrici se esse hanno dimensioni compatibili e se l’array di output è sufficientemente grande per contenere il risultato.
Se le matrici non hanno dimensioni compatibili oppure se l’array di output è troppo piccolo, impostare un flag di errore e tornare al programma chiamante.
Le dimensioni di tutti e tre gli array a, b e c devono essere passate alla subroutine dal programma chiamante, in modo da poter usare explicit-shape dummy arrays e controllare le dimensioni.


$$
A = \begin{bmatrix}
2 & -1 & 2 \\
-1 & -3 & 4 \\
2 & 4 & 2
\end{bmatrix}
$$

$$
A = \begin{bmatrix}
1 & -1 & -2 \\
2 & 2 & 0 \\
3 & 3 & 3 \\
5 & 4 & 4
\end{bmatrix}
$$

$$
B = \begin{bmatrix}
1 & 2 & 3 \\
2 & 1 & 2 \\
3 & 2 & 1
\end{bmatrix}
$$

$$
A = \begin{bmatrix}
-2  \\
5  \\
2 
\end{bmatrix}
$$


**Esercizio 10.** Si scriva una nuova versione della subroutine per il prodotto di matrici dell’Esercizio 9., che utilizza sottomoduli per separare l’interfaccia esplicita dal codice eseguibile.





