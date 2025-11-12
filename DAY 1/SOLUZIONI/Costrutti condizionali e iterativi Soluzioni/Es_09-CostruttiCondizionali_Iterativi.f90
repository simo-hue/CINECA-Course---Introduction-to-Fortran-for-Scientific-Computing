
PROGRAM Rom_Num
IMPLICIT NONE
CHARACTER(LEN=12) :: Rnum
INTEGER :: num, tnum1, tnum
INTEGER :: pos

DO
  Rnum = " "
  pos = 1
  PRINT*, "Type in your number between 0 and 999 (inclusive)"
  READ*, num
  IF (num .GE. 0 .AND. num .LE. 999) THEN
    tnum1 = num/100
    SELECT CASE (tnum1)
      CASE (1)
        Rnum(pos:pos) = "c"
        pos = pos + 1
      CASE (2)
        Rnum(pos:pos+1) = "cc"
        pos = pos + 2
      CASE (3)
        Rnum(pos:pos+2) = "ccc"
        pos = pos + 3
      CASE (4)
        Rnum(pos:pos+1) = "cd"
        pos = pos + 2
      CASE (5)
        Rnum(pos:pos) = "d"
        pos = pos + 1
      CASE (6)
        Rnum(pos:pos+1) = "dc"
        pos = pos + 2
      CASE (7)
        Rnum(pos:pos+2) = "dcc"
        pos = pos + 3
      CASE (8)
        Rnum(pos:pos+3) = "dccc"
        pos = pos + 4
      CASE (9)
        Rnum(pos:pos+1) = "cm"
        pos = pos + 2
    END SELECT
    
    tnum1 = tnum1*100
    tnum = (num-tnum1)/10

    SELECT CASE (tnum)
      CASE (1)
        Rnum(pos:pos) = "x"
        pos = pos + 1
      CASE (2)
        Rnum(pos:pos+1) = "xx"
        pos = pos + 2
      CASE (3)
        Rnum(pos:pos+2) = "xxx"
        pos = pos + 3
      CASE (4)
        Rnum(pos:pos+1) = "xl"
        pos = pos + 2
      CASE (5)
        Rnum(pos:pos) = "l"
        pos = pos + 1
      CASE (6)
        Rnum(pos:pos+1) = "lx"
        pos = pos + 2
      CASE (7)
        Rnum(pos:pos+2) = "lxx"
        pos = pos + 3
      CASE (8)
        Rnum(pos:pos+3) = "lxxx"
        pos = pos + 4
      CASE (9)
        Rnum(pos:pos+1) = "xc"
        pos = pos + 2
    END SELECT

    tnum = num-tnum*10-tnum1
    SELECT CASE (tnum)
      CASE (1)
        Rnum(pos:pos) = "i"
        pos = pos + 1
      CASE (2)
        Rnum(pos:pos+1) = "ii"
        pos = pos + 2
      CASE (3)
        Rnum(pos:pos+2) = "iii"
        pos = pos + 3
      CASE (4)
        Rnum(pos:pos+1) = "iv"
        pos = pos + 2
      CASE (5)
        Rnum(pos:pos) = "v"
        pos = pos + 1
      CASE (6)
        Rnum(pos:pos+1) = "vi"
        pos = pos + 2
      CASE (7)
        Rnum(pos:pos+2) = "vii"
        pos = pos + 3
      CASE (8)
        Rnum(pos:pos+3) = "viii"
        pos = pos + 4
      CASE (9)
        Rnum(pos:pos+1) = "ix"
        pos = pos + 2
      END SELECT

      PRINT*, num, "in Roman Numerals is ", TRIM(Rnum)
    ELSE
      PRINT*, "Number out of range"
      EXIT
    END IF
END DO

STOP
END PROGRAM Rom_Num





