program esempio
  implicit none
  real, allocatable :: A(:)

  ! alloco in memoria
  allocate(A(4))
  ! Assegno valori
  A =[1.,2., 3.,4.]


  call test_alloc(A)

contains 

  ! Voglio stampare la SIZE del vettore passato
  subroutine test_alloc(X)

  ! Primo esempio:
  real, allocatable, intent(OUT) :: X(:) ! Elementi modificabili, deallocate e allocate possibili
  
  IF (ALLOCATED(X)) THEN
      DEALLOCATE(X)
  END IF

  ALLOCATE(x(5)) ! Nuova allocazione con dimensione 5
  
  
  print *,  size(X)

  end subroutine test_alloc
end program esempio
