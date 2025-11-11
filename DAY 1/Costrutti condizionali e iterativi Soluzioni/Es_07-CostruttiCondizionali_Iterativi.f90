PROGRAM data_successiva 
IMPLICIT NONE 
INTEGER :: giorno, mese, anno 
INTEGER :: giorni_del_mese 

WRITE (*,*) 'Data (giorno, mese, anno)? ' 
READ (*,*) giorno, mese, anno 
WRITE (*,*) 'Il giorno successivo al', giorno, '/', mese, '/', anno, ' e'':'

SELECT CASE (mese) 
  CASE (9,4,6,11) 
    giorni_del_mese = 30 
  CASE (1,3,5,7,8,10,12) 
    giorni_del_mese = 31
  CASE (2)
    IF (MOD(anno,4) == 0 .AND. anno /= 1900) THEN 
      giorni_del_mese = 29 
    ELSE 
      giorni_del_mese = 28 
    END IF 
END SELECT

ultimo: IF (giorno == giorni_del_mese) THEN
   giorno = 1 
   dicembre: IF (mese == 12) THEN
      mese = 1 
      anno = anno + 1 
   ELSE 
      mese = mese + 1 
   END IF dicembre 
ELSE 
   giorno = giorno + 1 
END IF ultimo 

WRITE (*,*) giorno, '/', mese, '/', anno 

STOP
END PROGRAM data_successiva





