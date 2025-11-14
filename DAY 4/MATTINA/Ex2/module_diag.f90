MODULE diag_module
  IMPLICIT NONE
CONTAINS

  !-------------------------------------------------------
  ! Subroutine che prende un puntatore a matrice quadrata
  ! e restituisce un puntatore agli elementi della diagonale
  !-------------------------------------------------------
  SUBROUTINE get_diagonal(mat_ptr, diag_ptr)
    IMPLICIT NONE
    INTEGER, POINTER, INTENT(IN)  :: mat_ptr(:,:)
    INTEGER, POINTER, INTENT(OUT) :: diag_ptr(:)
    INTEGER :: n, i

    ! Determina la dimensione della diagonale
    n = MIN(SIZE(mat_ptr,1), SIZE(mat_ptr,2))

    ! Allocazione puntatore per la diagonale
    ALLOCATE(diag_ptr(n))

    ! Copia della diagonale principale
    DO i = 1, n
       diag_ptr(i) = mat_ptr(i,i)
    END DO

  END SUBROUTINE get_diagonal

END MODULE diag_module

