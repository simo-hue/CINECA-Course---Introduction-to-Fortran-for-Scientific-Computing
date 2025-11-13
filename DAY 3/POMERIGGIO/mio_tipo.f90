program mioTipo

    ! MIO TIPO SPECIFICO
    type auto
        CHARACTER(20) :: marca
        CHARACTER(20) :: modello
    end type auto


    ! DICHIARO IL MIO TIPO
    type(auto) :: dreamCar

    ! ASSEGNO IL MIO TIPO
    dreamcar%marca = "Porsche"
    dreamCar%modello = "911 Carrera"

    ! STAMPO IL RISULTATO
    print *, "La mia auto dei sogni e': ", TRIM(dreamCar%marca), " ", TRIM(dreamCar%modello)


end program mioTipo