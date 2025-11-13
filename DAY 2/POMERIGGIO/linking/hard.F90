program d

    IMPLICIT NONE

    integer :: x

#ifdef DEBUG
        print *, "Debug mode is ON"
#else
        print *, "Debug mode is OFF"
#endif

    print *, ' '

end program d