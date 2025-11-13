   PROGRAM TEST

   USE PROCS
   IMPLICIT NONE
   INTEGER, PARAMETER :: maxnum=100
   INTEGER :: num, i
   REAL, DIMENSION(maxnum) :: a

   !Dichiaro le variabili di massimo, minimo e loro posizioni che saranno gli argomenti effettivi della subtoutine

   REAL    :: massimo
   REAL    :: minimo
   INTEGER :: posix_max
   INTEGER :: posix_min

   PRINT*, 'Introduci il numero degli elementi del vettore'
   READ*, num
   PRINT*, 'Inserisci gli elementi del vettore'
   READ*, (a(i), i=1,num)

   ! Utilizzo gli argomenti keyword

   CALL extremes(a, num, maxvalue=massimo, minvalue=minimo, pos_maxvalue=posix_max, pos_minvalue=posix_min)

   WRITE(*,'(A, F8.2, I4)') 'Il massimo e la sua posizione sono:',massimo, posix_max
   WRITE(*,'(A, F8.2, I4)') 'Il minimo e la sua posizione sono:', minimo, posix_min

   END PROGRAM TEST