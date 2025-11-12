PROGRAM coordinate 
! Calcola le coordinate sferiche di un punto note le sue coordinate
! cartesiane e verifica il risultato

IMPLICIT NONE
REAL :: r, theta, phi, x, y, z

WRITE(*,*) " Inserisci x, y e z: "
READ(*,*) x,y,z

r     = SQRT(x**2+y**2+z**2)
theta = ATAN2(y,x)
phi   = ATAN2(SQRT(x**2+y**2),z)

WRITE(*,*) " Coordinate sferiche: "
WRITE(*,*) r, theta, phi

x     = r*COS(theta)*SIN(phi)
y     = r*SIN(theta)*SIN(phi)
z     = r*COS(phi)

WRITE(*,*) " Coordinate cartesiane corrispondenti: "
WRITE(*,*) x,y,z

END PROGRAM coordinate

