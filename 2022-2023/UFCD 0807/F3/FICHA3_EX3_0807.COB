       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLGREENTING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
        01 dindin PIC 9(3) VALUE 364.
        01 total PIC 9(4) VALUE 1000.
           PROCEDURE DIVISION.

           ADD dindin TO total.

           DISPLAY total

           STOP RUN.
