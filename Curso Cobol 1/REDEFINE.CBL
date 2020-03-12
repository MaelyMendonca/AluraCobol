 IDENTIFICATION DIVISION.
       PROGRAM-ID. aulaif.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WRK-MESES-EXTENSO.
          02 FILLER PIC X(03) VALUE 'JAN'.
          02 FILLER PIC X(03) VALUE 'FEV'.
          02 FILLER PIC X(03) VALUE 'MAR'.
          02 FILLER PIC X(03) VALUE 'ABR'.
          02 FILLER PIC X(03) VALUE 'MAI'.
          02 FILLER PIC X(03) VALUE 'JUN'.
          02 FILLER PIC X(03) VALUE 'JUL'.
          02 FILLER PIC X(03) VALUE 'AGO'.
          02 FILLER PIC X(03) VALUE 'SET'.
          02 FILLER PIC X(03) VALUE 'OUT'.
          02 FILLER PIC X(03) VALUE 'NOV'.
          02 FILLER PIC X(03) VALUE 'DEZ'.
          
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
          02 WRK-MES PIC X(3) OCCURS 12 TIMES.
          
       01 DATAATA.
          03 ANOATA       PIC 9(04)      VALUE ZEROS.
          03 MESATA       PIC 9(02)      VALUE ZEROS.
          03 DIAATA       PIC 9(02)      VALUE ZEROS.
  
          
     
       PROCEDURE DIVISION.
       ACCEPT DATAATA FROM DATE YYYYMMDD.
      
       DISPLAY 'DATA: ' DIAATA ' DE ' WRK-MES(MESATA) ' DE ' ANOATA.
       STOP RUN.
     
   


           
