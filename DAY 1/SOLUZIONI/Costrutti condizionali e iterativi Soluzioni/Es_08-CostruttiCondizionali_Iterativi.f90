PROGRAM convert_case
  IMPLICIT NONE
  CHARACTER (LEN = 80) :: string
  INTEGER :: i, upper_to_lower, len_string

  upper_to_lower = IACHAR("a") - IACHAR("A")

  WRITE (*,*) 'Please enter string of up to 80 characters'
  READ (*,'(A)') string

  len_string = LEN_TRIM(string)

  DO i = 1, len_string
    SELECT CASE (string(i:i))
      CASE ('A':'Z')
        string(i:i) = ACHAR(IACHAR(string(i:i)) + upper_to_lower)
      CASE ('a':'z')            ! Lower case character found:
        string(i:i) = ACHAR(IACHAR(string(i:i)) - upper_to_lower)
    END SELECT
  ENDDO
  
  WRITE (*,'(A)') string

STOP
END program convert_case




