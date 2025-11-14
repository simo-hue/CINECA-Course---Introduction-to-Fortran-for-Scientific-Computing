PROGRAM pointer_vectors_static
  IMPLICIT NONE

  REAL, DIMENSION(:), POINTER :: ptr1, ptr2 ! Assegna i puntatori ptr1 and ptr2 
  REAL, DIMENSION(5), TARGET :: v1, v2 ! Assegna i targets come arrays v1 and v2
  INTEGER :: i

  ! Inizializzazione dei vettori
  v1 = (/ 1, 2, 3, 4, 5 /)
  v2 = (/ 10, 20, 30, 40, 50 /)

  ! Stato iniziale dei puntatori
  PRINT *, "All'inizio:"
  PRINT *, "ptr1 associato?", ASSOCIATED(ptr1)
  PRINT *, "ptr2 associato?", ASSOCIATED(ptr2)

  ! Associazione dei puntatori ai vettori

  ptr1 => v1
  ptr2 => v2

  PRINT *, "Dopo associazione ai vettori:"
  PRINT *, "ptr1 associato?", ASSOCIATED(ptr1)
  PRINT *, "ptr2 associato?", ASSOCIATED(ptr2)

  ! Accesso e modifica tramite puntatori
  PRINT *, "Valori ptr1:", ptr1
  PRINT *, "Valori ptr2:", ptr2

  ptr1(3) = 999            ! modifica il 3° elemento di v1 tramite ptr1
  ptr2(1:3) = 999            ! modifica un subset di v2 tramite ptr2

  PRINT *, "Vettori modificati:"
  PRINT *, "v1:", v1
  PRINT *, "v2:", v2

  ! Dissociazione dei puntatori
  NULLIFY(ptr1)
  NULLIFY(ptr2)
  PRINT *, "Dopo nullify:"
  PRINT *, "ptr1 associato?", ASSOCIATED(ptr1)
  PRINT *, "ptr2 associato?", ASSOCIATED(ptr2)

END PROGRAM pointer_vectors_static

