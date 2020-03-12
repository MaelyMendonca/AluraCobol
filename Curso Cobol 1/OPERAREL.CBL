       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB05.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA            PIC 9(03)V99     VALUE ZEROS.
       77 WRK-COMPRIMENTO        PIC 9(03)V99     VALUE ZEROS.  
       77 WRK-AREA               PIC 9(03)V99     VALUE ZEROS.
         
          
       PROCEDURE DIVISION.
           DISPLAY 'LARGURA ..... : '.
             ACCEPT WRK-LARGURA.
           DISPLAY 'COMPRIMENTO..... : '.
             ACCEPT WRK-COMPRIMENTO.
             
          IF WRK-COMPRIMENTO > 0 AND WRK-LARGURA > 0     
             COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
			 DISPLAY ' A AREA É IGUAL A ' WRK-AREA
          ELSE 
             DISPLAY 'INFORMAÇÕES NÃO COMPATIVEIS, VERIFICAR E INSERIR CORRETAMENTE.'
             
          END-IF.
             
             
             
             
             STOP RUN.