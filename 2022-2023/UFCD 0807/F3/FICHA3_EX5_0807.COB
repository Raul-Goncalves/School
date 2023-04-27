       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLGREENTING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
         01 pag PIC 9(4)V99 VALUE 6350.75.
         01 taxa PIC 9(4)V99 VALUE 2333.25.
         01 pr PIC 9(4)V99 VALUE 1085.45.
         01 pensao PIC 9(4)V99 VALUE 1135.74.
         01 cobranca PIC 9(4)V99 VALUE 170.50.
         01 netpag PIC 9(4)V99 VALUE ZEROS.

           PROCEDURE DIVISION.

               SUBTRACT taxa,pr,pensao,cobranca FROM pag GIVING netpag.
                  DISPLAY netpag

           STOP RUN.
