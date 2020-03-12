 IDENTIFICATION DIVISION.
       PROGRAM-ID. aulaif.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
        DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
	   77 WRK-PRODUTO PIC X(20)    VALUE SPACES.
	   77 WRK-UF      PIC X(02)    VALUE SPACES.
	   77 WRK-VALOR   PIC 9(06)V99 VALUE ZEROS.
	   77 WRK-FRETE   PIC 9(04)V99 VALUE ZEROS.
	   PROCEDURE DIVISION.
	   
           DISPLAY 'PRODUTO ESCOLHIDO ..'.
           ACCEPT WRK-PRODUTO.
           
           DISPLAY 'VALOR TOTAL DA COMPRA ..'.
           ACCEPT WRK-VALOR.
           
           DISPLAY 'ESTADO PARA A ENTREGA ..'.
           ACCEPT WRK-UF.
           
           EVALUATE WRK-UF
             WHEN 'SP'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,05
             WHEN 'RJ'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,10
             WHEN 'MG'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,17
             WHEN OTHER
               DISPLAY ' :( DESCULPE, NÃO FAZEMOS ENTREGA NO SEU ESTADO.'
  
           END-EVALUATE.
           
           DISPLAY '-----------'.
           
           IF WRK-FRETE NOT EQUAL 0
           DISPLAY ' VALOR FINAL DA COMPRA = ' WRK-FRETE
           
           END-IF.
           
		   

            
             
         STOP RUN.