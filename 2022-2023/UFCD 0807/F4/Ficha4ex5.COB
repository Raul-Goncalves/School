       IDENTIFICATION DIVISION.
       PROGRAM-ID. FX4EX5.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

         01 num1 PIC 99.
         01 raiz PIC 99 VALUE 2.

       PROCEDURE DIVISION.

           DISPLAY "Coloque um numero"
           ACCEPT num1

           PERFORM VARYING num1 FROM num1 BY raiz UNTIL num1 > 51

           DISPLAY num1


           END-PERFORM

           STOP RUN.
           END PROGRAM FX4EX5.
