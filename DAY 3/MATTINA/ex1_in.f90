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
  real, allocatable, intent(IN) :: X(:) ! Elementi NON modificabili, nemmeno riallocate
  ALLOCATE(x(5)) ! ERRORE: non si puo' allocare un array allocatable passato come argomento
  
  
  print *,  size(X)

  end subroutine test_alloc
end program esempio
