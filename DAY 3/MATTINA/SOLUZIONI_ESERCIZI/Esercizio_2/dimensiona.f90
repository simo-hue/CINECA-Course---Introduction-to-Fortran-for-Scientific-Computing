PROGRAM dimensiona
   IMPLICIT NONE
   REAL(8), DIMENSION(:,:), ALLOCATABLE :: a
   INTEGER :: nd
!
   INTERFACE
      SUBROUTINE inizializza(n,a)
         IMPLICIT NONE
         REAL(8), DIMENSION(:,:), ALLOCATABLE, INTENT(INOUT) :: a
         INTEGER, INTENT(IN) :: n
      END SUBROUTINE inizializza

      SUBROUTINE calcola(a)
         IMPLICIT NONE
         REAL(8), DIMENSION(:,:), INTENT(INOUT) :: a
      END SUBROUTINE calcola

      SUBROUTINE presenta(a)
         IMPLICIT NONE
         REAL(8), DIMENSION(:,:), INTENT(INOUT) :: a
      END SUBROUTINE presenta   
END INTERFACE
!
   nd = 1
   DO WHILE ( nd > 0 )
      PRINT*,"Inserisci la dimensione della matrice quadrata"
      READ*,nd
      CALL inizializza(nd,a)
      CALL calcola(a)
      CALL presenta(a)
      DEALLOCATE(a)
   END DO 
!
   STOP
END PROGRAM dimensiona

SUBROUTINE inizializza(n,a)
   IMPLICIT NONE
   REAL(8), DIMENSION(:,:), ALLOCATABLE, INTENT(INOUT) :: a
   INTEGER, INTENT(IN) :: n

! Alla subroutine inizializza viene passato come argomento fittizio il valore della dimensione dell'array

   ALLOCATE(a(n,n))
   a=0.0D0
   RETURN
END SUBROUTINE inizializza

SUBROUTINE calcola(a)
   IMPLICIT NONE
   REAL(8), DIMENSION(:,:), INTENT(INOUT) :: a

   INTEGER :: i, j

! Alla subroutine calcola non viene passato come argomento il valore della dimensione dell'array, 
! ma utilizziamo la funzione intrinseca SIZE per recuperarla.

   DO j=1,SIZE(a,2) 
      DO i=1,SIZE(a,1)
         a(i,j)=DBLE(i-j)/DBLE(i+j)
      END DO
   END DO
END SUBROUTINE calcola

SUBROUTINE presenta(a)
   IMPLICIT NONE
   REAL(8), DIMENSION(:,:), INTENT(INOUT) :: a

   INTEGER :: i, j

! Alla subroutine presenta non viene passato come argomento il valore della dimensione dell'array,
! ma utilizziamo la funzione intrinseca SIZE per recuperarla.

   WRITE(*,*) "I primi elementi della matrice A sono:"
   DO i=1,MIN(7,SIZE(a,2))
      DO j=1,MIN(7,SIZE(a,1))
         WRITE(*,"(1X,F8.2)",ADVANCE="NO") a(i,j)
      END DO
      WRITE(*,"(/)")
   END DO
END SUBROUTINE presenta
