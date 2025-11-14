PROGRAM test_diagonal_pointer
  USE diag_module
  IMPLICIT NONE
  #FIXME ! Definisci i puntatori alla matrice e all'array diagonale

  INTEGER :: i, j


  ! Associa dei valori al puntatore matrice

  #FIXME

  ! Stampa matrice originale
  PRINT *, "Matrice originale:"
  DO i = 1,2
     PRINT *, mat(i,:)
  END DO

  ! Chiamata alla subroutine per ottenere la diagonale

  #FIXME

  ! Stampa diagonale principale
  PRINT *, "Diagonale principale:"
  PRINT *, diag

  ! Deallocazione puntatori

  #FIXME

END PROGRAM test_diagonal_pointer
