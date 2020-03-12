 IDENTIFICATION DIVISION.
       PROGRAM-ID. aulaif.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
	   77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
	   77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
	   77 WRK-MEDIA PIC 9(02) VALUE ZEROS.
	   PROCEDURE DIVISION.
	   
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
		   
           DISPLAY ' NOTAS GERAIS '
           DISPLAY 'NOTA 1= ' WRK-NOTA1.
           DISPLAY 'NOTA 2= ' WRK-NOTA2.
           DISPLAY'------------------'.
           DISPLAY 'MÉDIA GERAL'.
            COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           DISPLAY ' A MÉDIA DO ALUNO É ' WRK-MEDIA.
           EVALUATE WRK-MEDIA 
             WHEN 6 THRU 10
               DISPLAY 'APROVADO'
             WHEN 2 THRU 5
               DISPLAY 'RECUPERAÇÃO'
             WHEN OTHER
             DISPLAY 'REPROVADO'
			 END-EVALUATE.
           
             
           STOP RUN.