            IDENTIFICATION DIVISION.
       PROGRAM-ID. FINAL03.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WRK-DATA.
          02 WRK-ANO       PIC 9(04)      VALUE ZEROS.
          02 WRK-MES       PIC 9(02)      VALUE ZEROS.
          02 WRK-DIA       PIC 9(02)      VALUE ZEROS.
          
       01 WRK-MESES.
          03 WRK-NOMEMES   PIC X(10)      OCCURS 12 TIMES.
          
       PROCEDURE DIVISION.
       
       0001-PRINCIPAL.
           PERFORM 0100-INCIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
           
           STOP RUN.
       
       0100-INCIALIZAR.
           
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.

       0200-PROCESSAR.
       
           MOVE 'JANEIRO'    TO WRK-NOMEMES(01).
           MOVE 'FEVERREIRO' TO WRK-NOMEMES(02).
           MOVE 'MARÇO'      TO WRK-NOMEMES(03).
           MOVE 'ABRIL'      TO WRK-NOMEMES(04).
           MOVE 'MAIO'       TO WRK-NOMEMES(05).
           MOVE 'JUNHO'      TO WRK-NOMEMES(06).
           MOVE 'JULHO'      TO WRK-NOMEMES(07).
           MOVE 'AGOSTO'     TO WRK-NOMEMES(08).
           MOVE 'SETEMBRO'   TO WRK-NOMEMES(09).
           MOVE 'OUTUBRO'    TO WRK-NOMEMES(10).
           MOVE 'NOVEMBRO'   TO WRK-NOMEMES(11).
           MOVE 'DEZEMBRO'   TO WRK-NOMEMES(12).

       

           DISPLAY WRK-DIA '/' WRK-NOMEMES(WRK-MES) '/' WRK-ANO.

       0300-FINALIZAR.
           DISPLAY '--------------'.
           DISPLAY 'ACABOU O PROGRAMA'.
           