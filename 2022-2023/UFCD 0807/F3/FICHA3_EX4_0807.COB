       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLGREENTING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
        01 num1 PIC 9(4) VALUE 364.
        01 num2 PIC 9(4) VALUE 1000.
        01 num3 PIC 9(4) VALUE 5555.
        01 total PIC 9(4) VALUE 1455.

           PROCEDURE DIVISION.

           SUBTRACT num1,num2 FROM num3,GIVING total

           DISPLAY total

           STOP RUN.
