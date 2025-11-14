PROGRAM pointer_vectors_alloc
  IMPLICIT NONE

  #FIXME ! Assegna i puntatori ptr1 e ptr2 ad array
  #FIXME ! Assegna i targets come array allocabili
  INTEGER :: i

  #FIXME
  v1 = (/ 1, 2, 3, 4, 5 /)
  v2 = (/ 10, 20, 30, 40, 50 /)

  ! Stato iniziale dei puntatori
  PRINT *, "All'inizio:"
  PRINT *, "ptr1 associato?", ASSOCIATED(ptr1)
  PRINT *, "ptr2 associato?", ASSOCIATED(ptr2)

  ! Associazione dei puntatori agli array allocabili
  ptr1 => v1
  ptr2 => v2

  PRINT *, "Dopo associazione ai vettori allocabili:"
  PRINT *, "ptr1 associato?", ASSOCIATED(ptr1)
  PRINT *, "ptr2 associato?", ASSOCIATED(ptr2)

  ! Accesso e modifica tramite puntatori
  ptr1(3) = 99            ! modifica il 3° elemento di v1 tramite ptr1
  ptr2(1:2) = (/111,222/) ! modifica un subset di v2 tramite ptr2

  PRINT *, "Vettori modificati:"
  PRINT *, "v1:", v1
  PRINT *, "v2:", v2

  ! Dissociazione dei puntatori
  NULLIFY(ptr1)
  NULLIFY(ptr2)
  PRINT *, "Dopo nullify:"
  PRINT *, "ptr1 associato?", ASSOCIATED(ptr1)
  PRINT *, "ptr2 associato?", ASSOCIATED(ptr2)

  ! Deallocazione degli array allocabili per evitare memory leak
  #FIXME

END PROGRAM pointer_vectors_alloc

