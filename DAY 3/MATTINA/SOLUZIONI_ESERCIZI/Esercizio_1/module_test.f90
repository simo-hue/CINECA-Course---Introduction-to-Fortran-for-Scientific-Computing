MODULE assumed_shape_array

CONTAINS
  SUBROUTINE declare_arr(array)
  IMPLICIT NONE
  REAL, DIMENSION(:,:) :: array
  INTEGER              :: i1,j1
  INTEGER              :: i2,j2

  i1=LBOUND(array,1)
  i2=UBOUND(array,1)
  j1=LBOUND(array,2)
  j2=UBOUND(array,2)

 WRITE(*,*) 'Print bounds of the array', i1,i2,j1,j2
 WRITE(*,*) 'Print shape of the array ', SHAPE(array)
 WRITE(*,*) 'Print size of the array  ', SIZE(array)
 WRITE(*,*) '***********************'

 END SUBROUTINE

 END MODULE  assumed_shape_array
