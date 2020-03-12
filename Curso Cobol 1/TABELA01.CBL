 IDENTIFICATION DIVISION.
       PROGRAM-ID. aulaif.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WRK-MESES.
          02 WRK-MES       PIC X(09)      OCCURS 12 TIMES.
       01 DATAATA.
          03 ANOATA       PIC 9(04)      VALUE ZEROS.
          03 MESATA       PIC 9(02)      VALUE ZEROS.
          03 DIAATA       PIC 9(02)      VALUE ZEROS.
  
          
     
       PROCEDURE DIVISION.
       ACCEPT DATAATA FROM DATE YYYYMMDD.
       PERFORM 0040-MONTANDONOMES.
       DISPLAY 'DATA: ' DIAATA ' DE ' WRK-MES(MESATA) 'DE ' ANOATA.
       STOP RUN.
     
    0040-MONTANDONOMES.
           MOVE 'JANEIRO'   TO WRK-MES(01).
           MOVE 'FEVEREIRO' TO WRK-MES(02).
           MOVE 'MARÇO'     TO WRK-MES(03).
           MOVE 'ABRIL'     TO WRK-MES(04).
           MOVE 'MAIO'      TO WRK-MES(05).
           MOVE 'JUNHO'     TO WRK-MES(06).
           MOVE 'JULHO'     TO WRK-MES(07).
           MOVE 'AGOSTO'    TO WRK-MES(08).
           MOVE 'SETEMBRO'  TO WRK-MES(09).
           MOVE 'OUTUBRO'   TO WRK-MES(10).
           MOVE 'NOVEMBRO'  TO WRK-MES(11).
           MOVE 'DEZEMBRO'  TO WRK-MES(12).


           
