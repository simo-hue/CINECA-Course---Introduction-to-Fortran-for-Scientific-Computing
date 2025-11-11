PROGRAM logics

    IMPLICIT NONE
    
    INTEGER :: a, b

    PRINT *, 'inserisci 2 numeri interi separati da una virgola: '

    READ *, a, b

    print *, "i numeri inseriti sono: ", a, b

    if(a > b) then
        print *, a, " è maggiore di ", b
    else if (a < b) then
        print *, a, " è minore di ", b
    else
        print *, "i numeri sono uguali"
    end if

    STOP

END PROGRAM logics