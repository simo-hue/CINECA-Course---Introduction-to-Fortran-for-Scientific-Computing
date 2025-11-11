PROGRAM logics

    IMPLICIT NONE
    
    INTEGER :: a, b, c

    PRINT *, 'inserisci 3 numeri interi ( lunghezza dei lati di un triangolo ) separati da una virgola: '

    READ *, a, b, c

    print *, "Triangolo di lati"
    print *, a, b
    print *, b
    print *, c

    if(a == b .and. b == c) then
        print *, "triangolo equilatero"
    else if (a == b .or. b == c .or. a == c) then
        print *, "triangolo isoscele"
    else
        print *, "triangolo scaleno"
    end if

    STOP

END PROGRAM logics