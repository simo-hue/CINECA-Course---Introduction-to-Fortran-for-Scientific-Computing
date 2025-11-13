MODULE test_mod
  IMPLICIT NONE  
CONTAINS

elemental real function seno(x)
real, intent(in) :: x
seno =sin(x)
end function

elemental real function arcoseno(x)
real, intent(in) :: x
arcoseno =asin(x)
end function

elemental real function coseno(x)
real, intent(in) :: x
coseno =cos(x)
end function

elemental real function arcocoseno(x)
real, intent(in) :: x
arcocoseno =acos(x)
end function

elemental real function tangente(x)
real, intent(in) :: x
tangente =tan(x)
end function

elemental real function arcotangente(x)
real, intent(in) :: x
arcotangente =atan(x)
end function

END MODULE
