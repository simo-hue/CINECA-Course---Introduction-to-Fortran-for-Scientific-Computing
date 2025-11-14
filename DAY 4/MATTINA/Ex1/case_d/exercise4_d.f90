PROGRAM pointer_allocate_demo
  IMPLICIT NONE
  INTEGER, POINTER :: p1(:), p2(:)
  INTEGER :: i

  ! --- Allocazione diretta dei puntatori ---

  ALLOCATE(p1(5))
  ALLOCATE(p2(3))

  ! Assegnazione di valori
  p1 = (/1, 2, 3, 4, 5/)
  p2 = (/10, 20, 30/)

  PRINT *, "Valori di p1:", p1
  PRINT *, "Valori di p2:", p2

  ! --- Deallocazione dei puntatori ---

  DEALLOCATE(p1)
  DEALLOCATE(p2)
  
  PRINT *, "Dopo DEALLOCATE, ASSOCIATED(p1)?", ASSOCIATED(p1)
  PRINT *, "Dopo DEALLOCATE, ASSOCIATED(p2)?", ASSOCIATED(p2)

END PROGRAM pointer_allocate_demo

