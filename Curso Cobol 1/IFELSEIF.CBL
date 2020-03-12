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
           IF WRK-MEDIA >=6
             DISPLAY 'APROVADO'
           ELSE
             DISPLAY 'REPROVADO'
           END-IF.
             
           STOP RUN.