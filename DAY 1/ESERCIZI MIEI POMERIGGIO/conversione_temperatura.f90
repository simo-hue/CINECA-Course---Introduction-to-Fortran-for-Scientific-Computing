PROGRAM coordinate
    IMPLICIT NONE
    
    REAL :: temp_f, temp_c, temp_k

    PRINT *, 'Enter temperature in Fahrenheit:'
    READ *, temp_f

    temp_k = (5. / 9.) * (temp_f + 459.67)

    temp_c = temp_k - 273.15

    WRITE (*, '(A, F5.2)') 'Temperature in Celsius: ', temp_c

    STOP
END PROGRAM coordinate