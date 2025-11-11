PROGRAM LetScr
   IMPLICIT NONE
   INTEGER :: n, st
   REAL :: Fdeg, Cdeg, Kdeg
   CHARACTER(80) :: r
   
   OPEN(11,FILE="Fahrenheit.txt",STATUS="OLD",IOSTAT=st)
   WRITE(*,*) "IOSTAT(OPEN) = ",st
   
   READ(11,*,IOSTAT=st) Fdeg
   WRITE(*,*) "IOSTAT(READ) = ",st
   Cdeg = (Fdeg - 32.) / 1.8  ! Fdeg -> Cdeg
   Kdeg = Cdeg + 273.15  ! Cdeg -> Kdeg

   WRITE(*,*,IOSTAT=st) Fdeg," Fahrenheit sono ",Cdeg," Celsius e ", &
      & Kdeg,"  Kelvin"
      
   READ(11,*,IOSTAT=st) Fdeg
   WRITE(*,*) "IOSTAT(READ) = ",st
   Cdeg = (Fdeg - 32.) / 1.8  ! Fdeg -> Cdeg
   Kdeg = Cdeg + 273.15  ! Cdeg -> Kdeg
   WRITE(*,*,IOSTAT=st) Fdeg," Fahrenheit sono ",Cdeg," Celsius e ", &
      & Kdeg,"  Kelvin"
      
   READ(11,*,IOSTAT=st) Fdeg
   WRITE(*,*) "IOSTAT(READ) = ",st
   Cdeg = (Fdeg - 32.) / 1.8  ! Fdeg -> Cdeg
   Kdeg = Cdeg + 273.15  ! Cdeg -> Kdeg
   WRITE(*,*,IOSTAT=st) Fdeg," Fahrenheit sono ",Cdeg," Celsius e ", &
      & Kdeg,"  Kelvin"
   
   CLOSE(11,IOSTAT=st)
   WRITE(*,*) "IOSTAT(CLOSE) = ",st

   STOP
END PROGRAM LetScr
