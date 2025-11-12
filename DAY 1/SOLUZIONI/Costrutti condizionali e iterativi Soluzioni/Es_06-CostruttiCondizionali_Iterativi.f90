PROGRAM no_days
  IMPLICIT NONE
  INTEGER :: month, no_of_days, year
  LOGICAL :: leap_year
  LOGICAL :: valid_month=.TRUE.

  WRITE(*,*) 'Please enter month number and year:'
  READ (*,*) month, year

  leap_year = MOD(year, 4) == 0
  
  SELECT CASE (month)
    CASE (9, 4, 6, 11)
      no_of_days = 30
    CASE (1, 3, 5, 7:8, 10, 12)
      no_of_days = 31
    CASE (2)
      For_February: SELECT CASE (leap_year)
        CASE (.FALSE.)
          no_of_days = 28
        CASE (.TRUE.)
          no_of_days = 29
      END SELECT For_February
    CASE DEFAULT

      valid_month = .FALSE.
      WRITE(*,*) month, ' is not the number of a month'
  END SELECT

  IF (valid_month) WRITE (*,*) 'Number of days in month number ', &
                    month, ', year ', year, ' is ', no_of_days

STOP
END PROGRAM no_days





