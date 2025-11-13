MODULE test_mod
  IMPLICIT NONE  
  REAL, PARAMETER :: PI = 3.1415926

CONTAINS 

  ELEMENTAL REAL FUNCTION seno(angolo)
    REAL, INTENT(IN) :: angolo
    seno = SIN(angolo * PI / 180.0)
  END FUNCTION seno

  ELEMENTAL REAL FUNCTION arcoseno(angolo)
    REAL, INTENT(IN) :: angolo
    arcoseno = ASIN(angolo) * 180.0 / PI
  END FUNCTION arcoseno

END MODULE
