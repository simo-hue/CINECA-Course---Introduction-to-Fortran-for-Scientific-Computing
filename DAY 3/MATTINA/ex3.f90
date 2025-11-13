program esempio
  implicit none
  real, allocatable :: A(:)
  allocate(A(4))
  A =[1.,2., 3.,4.]

  call test_alloc(A)

contains 
  subroutine test_alloc(X)
  real, allocatable, intent(#FIXME) :: X(:)

  #FIXME
  #FIXME
  print *,  size(X)

  end subroutine test_alloc
end program esempio
