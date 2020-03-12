              IDENTIFICATION DIVISION.
       program-id. PROG04.
       environment division.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       data division.
       working-storage section.
       01 WRK-MES.
          02 WRK-NOMEMES   PIC 9(06)     OCCURS 12 TIMES.
       77 WRK-CONT         PIC 9(02)     VALUE 1.
       77 WRK-MESVENDA     PIC 9(02)     VALUE ZEROS.
       77 WRK-VENDA        PIC 9(06)     VALUE ZEROS.
       77 WRK-QUANTVENDAS  PIC 9(36)     VALUE ZEROS.
       procedure division.
       
       0001-EXECUTAR.
           PERFORM 0002-RECEBERINF UNTIL WRK-MESVENDA = 99
           IF WRK-MESVENDA = 99
           PERFORM 0003-CALCULO 12 TIMES
           PERFORM 0004-MOSTRAR
           END-IF.
           PERFORM 0005-FINAL.
           STOP RUN.
       
       0002-RECEBERINF.
           
            DISPLAY ' QUAL O VALOR DA VENDA?'.
            ACCEPT WRK-VENDA.
            DISPLAY ' QUAL O MES DA VENDA?'.
            ACCEPT WRK-MESVENDA.
            ADD 1 TO WRK-QUANTVENDAS.
            ADD WRK-VENDA TO WRK-NOMEMES(WRK-MESVENDA).

       0003-CALCULO.
       
       DISPLAY 'VALOR ACUMULADO NO MES' WRK-CONT '=' WRK-NOMEMES(WRK-CONT).
       ADD 1 TO WRK-CONT.
   
       0004-MOSTRAR.

           COMPUTE WRK-QUANTVENDAS = WRK-QUANTVENDAS - 1.
           DISPLAY 'QUANTIDADE DE VENDAS= 'WRK-QUANTVENDAS.
           

       0005-FINAL.
           DISPLAY '--------------'.
           DISPLAY 'ACABOU O PROGRAMA'.
           