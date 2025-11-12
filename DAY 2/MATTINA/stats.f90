   PROGRAM statistic
   IMPLICIT NONE
   ! Fase dichiarativa del main program
   INTEGER, PARAMETER      :: maxnum=100
   INTEGER                 :: num, i
   REAL, DIMENSION(maxnum) :: a ! array mono-dimensionale di REAL
   REAL                    :: mass, mini 
   INTEGER                 :: imass, imini

    num = 5

    print *, "inserisci i valori dell'array"

   DO i = 1, num
       read *, a(i)
   END DO

   CALL max(a, num, mass, imass)

   WRITE(*,'(A, F8.2, A, I4)') "Il massimo ", mass, " si trova in posizione ", imass

   CALL min(a, num, mini, imini)

   WRITE(*,'(A, F8.2, A, I4)') "Il massimo ", mini, " si trova in posizione ", imini

   END PROGRAM statistic

   SUBROUTINE max(a, num, mass, imass)
    
        IMPLICIT NONE
        
        INTEGER :: i ! non posso ereditarla
        INTEGER, INTENT(IN) :: num
        REAL, INTENT(IN), DIMENSION(num) :: a ! array mono-dimensionale di REAL
        REAL, INTENT(OUT) :: mass
        INTEGER, INTENT(OUT) :: imass

        mass = a(1)
        imass = 1

        DO i = 1, num
            if (a(i) > mass) then
                mass = a(i)
                imass = i
            END IF
        END DO
    END SUBROUTINE max


SUBROUTINE min(a, num, mini, imini)
    
        IMPLICIT NONE
        
        INTEGER :: i ! non posso ereditarla
        INTEGER, INTENT(IN) :: num
        REAL, INTENT(IN), DIMENSION(num) :: a ! array mono-dimensionale di REAL
        REAL, INTENT(OUT) :: mini
        INTEGER, INTENT(OUT) :: imini

        mini = a(1)
        imini = 1

        DO i = 1, num
            if (a(i) < mini) then
                mini = a(i)
                imini = i
            END IF
        END DO
    END SUBROUTINE min

