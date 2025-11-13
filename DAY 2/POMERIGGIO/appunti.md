# ARRAY ALLOCABILI E GESTIONE DELLA MEMORIA

sono una collezione di variabili della stessa natura ( TIPO UGUALE ) e si indicizzano a partire da 1.

Vengono allocate all'inizio dello SCOPE e poi rimosse quando si esce


## CONTIGUITÀ IN MEMORIA

Importante per l'ottimizzazione del codice essendo molto ma molto più veloce

---

di default fortran non inizializza a 0, ma fattibile con una flag in fase di compilazione

**NB!** ricordarsi che fortran lavora per colonne e non per righe

---

# COMPILAZIONE E LINKING

ci sono 4 fasi "nascoste" quando eseguo gfortran:

1. pre-compilazione
2. compilazione
3. assemblazione
4. linking

## pre-compilazione ( non obbligatorie da standard )

Ad esempio gli header file nel C o gli include

Se nomino il file invece che .f90 con .F90 allora viene fatta una pre-compilazione in automatico

gfortran -c chiama il compilatore e produce dei file oggetto ( non leggibili da umani ) e quindi ci si ferma prima del linking

Per fare il linking faccio gfortran *.o con i file oggetto che mi interessano

