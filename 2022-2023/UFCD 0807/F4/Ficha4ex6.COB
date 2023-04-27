       IDENTIFICATION DIVISION.
       PROGRAM-ID.Ficha4ex4.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  num1 PIC 99.
       01  r PIC 99.

       PROCEDURE DIVISION.

           DISPLAY "Bota um numero para vermos se é impar ou par."
           ACCEPT num1


           DIVIDE num1 by 2 GIVING num1 REMAINDER r

           IF r = 0
               DISPLAY "O numero é par"
               ELSE
                   DISPLAY " Numero é impar"
                   END-IF

           STOP RUN.
       END PROGRAM Ficha4ex4.
