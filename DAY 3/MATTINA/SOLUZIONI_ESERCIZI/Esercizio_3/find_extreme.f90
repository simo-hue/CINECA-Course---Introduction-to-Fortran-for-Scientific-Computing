    MODULE procs   

    REAL    :: maxvalue
    REAL    :: minvalue
    INTEGER :: pos_maxvalue
    INTEGER :: pos_minvalue

    CONTAINS


    SUBROUTINE extremes(array, n, maxvalue, minvalue, pos_maxvalue, pos_minvalue)
    IMPLICIT NONE

    ! Dichiarazione argomenti fittizi
    INTEGER           , INTENT(IN)  :: n
    REAL, DIMENSION(n), INTENT(IN)  :: array
    REAL, OPTIONAL,     INTENT(OUT) :: maxvalue
    REAL, OPTIONAL,     INTENT(OUT) :: minvalue
    INTEGER, OPTIONAL,  INTENT(OUT) :: pos_maxvalue
    INTEGER, OPTIONAL,  INTENT(OUT) :: pos_minvalue

    ! Dichiariazione variabili locali
    INTEGER  :: i
    REAL     :: maxim
    REAL     :: minim
    INTEGER  :: pos_max
    INTEGER  :: pos_min
    
    maxim = array(1)
    minim = array(1)
    pos_max = 1
    pos_min = 1

    DO i=2,n
      IF (array(i) > maxim) THEN
      maxim = array(i)
      pos_max = i
      ENDIF
      IF (array(i) < minim) THEN
      minim = array(i)
      pos_min = i
      ENDIF
   ENDDO

   IF (PRESENT(maxvalue)) maxvalue = maxim
   IF (PRESENT(minvalue)) minvalue = minim
   IF (PRESENT(pos_maxvalue)) pos_maxvalue = pos_max
   IF (PRESENT(pos_minvalue)) pos_minvalue = pos_min

   END SUBROUTINE extremes

   END MODULE procs

