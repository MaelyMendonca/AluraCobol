 IDENTIFICATION DIVISION.
       PROGRAM-ID. aulaif.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
        DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
	   77 WRK-NOME                  PIC X(20)       VALUE SPACES.
	   77 WRK-ANOENTRADA            PIC 9(04)       VALUE ZEROS.
	   77 WRK-ANOATUAL              PIC 9(04)       VALUE ZEROS.
	   77 WRK-ANO                   PIC 9(02)       VALUE ZEROS.
	   77 WRK-SALARIO               PIC 9(06)V99    VALUE ZEROS.
	   77 WRK-TEMPO                 PIC 9(04)       VALUE ZEROS.
	   77 WRK-SALFINAL              PIC 9(07)V99    VALUE ZEROS.
	   
	   PROCEDURE DIVISION.
	   0001-PRINCIPAL.
	        PERFORM 0100-INICIALIZAR.
	        PERFORM 0200-PROCESSAR.
	        PERFORM 0300-FINALIZAR.
	        
	        
	        STOP RUN.
	        
	   0100-INICIALIZAR.    
	   
           DISPLAY 'NOME DO FUNCIONÁRIO: '.
           ACCEPT WRK-NOME.
           
           DISPLAY 'ANO ATUAL: '.
           ACCEPT WRK-ANOATUAL
           
           DISPLAY 'ANO DE ENTRADA DO FUNCIONÁRIO: '.
           ACCEPT WRK-ANOENTRADA.
           
           DISPLAY 'SALÁRIO: '.
           ACCEPT WRK-SALARIO.
        
           DISPLAY '-----------'.
           
        0200-PROCESSAR.   
           COMPUTE WRK-ANO = WRK-ANOATUAL - WRK-ANOENTRADA.

           
           
           EVALUATE WRK-ANO
             WHEN 0 THRU 1
                COMPUTE WRK-SALFINAL = WRK-SALARIO * 1,00
                 DISPLAY '0% DE AUMENTO AO ANO'
             WHEN 2 THRU 5
                COMPUTE WRK-SALFINAL = WRK-SALARIO * 1,05
                 DISPLAY '5% DE AUMENTO AO ANO'
             WHEN 6 THRU 15
                COMPUTE WRK-SALFINAL = WRK-SALARIO * 1,10
                 DISPLAY '10% DE AUMENTO AO ANO'
             WHEN OTHER
                COMPUTE WRK-SALFINAL = WRK-SALARIO * 1,15
               DISPLAY ' PARABÉNS PELA SUA PERMANENCIA NA EMPRESA, SEU AUMENTO SERÁ DE 15% DE AGORA EM DIANTE.'
             
           
           END-EVALUATE. 
           
           
        0300-FINALIZAR.   
    
           DISPLAY WRK-SALFINAL. 
           DISPLAY ' FINAL DE PROCESSO '.
