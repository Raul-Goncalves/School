       IDENTIFICATION DIVISION.
       PROGRAM-ID.Ficha2pag3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  num1 PIC 99.
       01  num2 PIC 99.

       PROCEDURE DIVISION.

           DISPLAY "Bota o primeiro extremo do  retangulo."
           ACCEPT num1

           DISPLAY "Bota o segundo extremo do  retangulo."
           ACCEPT num2

           IF (num1*num2) LESS THAN 100

                 DISPLAY "Área pequena"
                 ELSE
                     DISPLAY"Área grande"

               END-IF

           STOP RUN.
       END PROGRAM Ficha2pag3.
