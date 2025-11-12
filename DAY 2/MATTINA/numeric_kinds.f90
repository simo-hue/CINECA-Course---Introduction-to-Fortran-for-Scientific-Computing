  MODULE numeric_kinds
  ! Riadattato da M. Metcalf, J. Reid, and M. Cohen, "Modern Fortran Explained", Pag. 74
  ! Nomina le costant per 4, 2, and 1 byte integers:
  INTEGER, PARAMETER :: &
  i4b = selected_int_kind(9), &
  i2b = selected_int_kind(4), &
  i1b = selected_int_kind(2)
  ! e per single, double e quadruple precision reals:
  INTEGER, PARAMETER :: &
  sp = kind(1.0), &
  dp = selected_real_kind(2*precision(1.0_sp)), &
  qp = selected_real_kind(2*precision(1.0_dp))
  END MODULE numeric_kinds

