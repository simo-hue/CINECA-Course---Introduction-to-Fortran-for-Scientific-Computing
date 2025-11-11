PROGRAM radici
!Scopo: Questo programma calcola le radici di un'equazione di secondo grado
! a*x**2+ b*x + c = 0

IMPLICIT NONE
REAL :: a, b, c
REAL :: discriminante, parte_immag, parte_reale
REAL :: x1, x2

! Soluzioni dell'equazione

WRITE (*,*) 'Inserire i tre coefficienti A, B e C: '
READ (*,'(F10.5)') a, b, c
WRITE(*,'(3(A,F10.5),A)') "Risolvo l'equazione: ", a, "*x**2 + ", b, "*x + ", c, " = 0"

!Calcola il discriminante
discriminante = b**2 - 4 * a * c
IF (discriminante >0) THEN
   x1 = (-b + sqrt(discriminante)) / (2.*a)
   x2 = (-b - sqrt(discriminante)) / (2.*a)
   WRITE (*,*) 'Due radici reali: ', x1, x2
ELSE IF (discriminante == 0.) THEN
   x1 = ( -b ) / (2. * a)
   WRITE (*,*) 'Due radici reali e coincidenti: ', x1
ELSE    ! Radici complesse
   parte_reale = ( -b ) / (2. * a)
   parte_immag = sqrt(abs(discriminante)) / (2.*a)
   WRITE (*,*) 'Due radici immaginarie:', parte_reale, '+/- i', parte_immag
END IF

STOP 
END PROGRAM radici


