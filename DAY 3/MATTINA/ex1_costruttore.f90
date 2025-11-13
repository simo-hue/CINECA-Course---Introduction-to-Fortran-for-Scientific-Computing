program esempio
  implicit none
  real, allocatable :: A(:)

  ! alloco in memoria
  allocate(A(4))
  ! Assegno valori
  A =[1.,2., 3.,4.]

  print *, "Dimensione di A prima della chiamata a test_alloc:", size(A)

  call test_alloc(A)

  print *, "Dimensione di A dopo la chiamata a test_alloc:", size(A)

contains 

  ! Voglio stampare la SIZE del vettore passato
  subroutine test_alloc(X)

  ! Primo esempio:
  real, allocatable, intent(OUT) :: X(:) ! Elementi modificabili, deallocate e allocate possibili
  
    X = [12, 32, 45, 65, 53] ! Nuova allocazione con dimensione 5 ( tramite costruttore )
  
  
  print *, "Dimensione dell'Array nella procedura:", size(X)

  end subroutine test_alloc
end program esempio
