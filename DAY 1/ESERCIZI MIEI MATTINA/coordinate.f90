PROGRAM coordinate

    IMPLICIT NONE
    REAL(8) :: x, y, z
    REAL(8) :: r, theta, phi

    PRINT *, "Inserisci la coordinata x: "
    READ *, x

    PRINT *, "Inserisci la coordinata y: "
    READ *, y

    PRINT *, "Inserisci la coordinata z: "
    READ *, z

    PRINT *, "Punto inserito: (", x, ", ", y, ", ", z, ")"

    CALL cartesian_to_spherical(r, theta, phi, x, y, z)

    PRINT *, "Punto in coordinate sferiche: ", r, theta, phi
    
    CALL spherical_to_cartesian(x, y, z, r, theta, phi)

    PRINT *, "Punto in coordinate cartesiane: ", x, y, z
    
    

    CONTAINS

    SUBROUTINE cartesian_to_spherical(r, theta, phi, x, y, z)
        
        IMPLICIT NONE
        REAL(8) :: x, y, z

        REAL(8) :: r, theta, phi

        r = SQRT(x**2 + y**2 + z**2)
        theta = ACOS(z / r)
        phi = ATAN2(y, x)

        RETURN

    END SUBROUTINE cartesian_to_spherical
    
    SUBROUTINE spherical_to_cartesian(x, y, z, r, theta, phi)
        
        IMPLICIT NONE
        REAL(8) :: x, y, z

        REAL(8) :: r, theta, phi

        x = r * SIN(theta) * COS(phi)
        y = r * SIN(theta) * SIN(phi)
        z = r * COS(theta)

        RETURN

    END SUBROUTINE spherical_to_cartesian

END PROGRAM coordinate