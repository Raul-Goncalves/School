       IDENTIFICATION DIVISION.
       PROGRAM-ID.Ficha4ex4.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  idade PIC A.
         88 bebe VALUE  0 THRU 4.
         88 infA VALUE 5 THRU 7.
         88 infB VALUE 8 THRU 11.
         88 JnA  VALUE 12 THRU 13.
         88 JnB VALUE 14 THRU 16.
         88 Adulto  VALUE 18 THRU 64.
         88 Senior VALUE 65 THRU 95.


       PROCEDURE DIVISION.

           DISPLAY"Insira a sua idade! "
           ACCEPT idade.
           EVALUATE TRUE
               WHEN bebe
               DISPLAY"Bebe"
               WHEN infA
               DISPLAY"Infantil A"
               WHEN infB
               DISPLAY"Infantil B"
               WHEN JnA
               DISPLAY"Junior A"
               WHEN JnB
               DISPLAY"Junior B"
               WHEN Adulto
               DISPLAY"Adulto"
               WHEN Senior
               DISPLAY"Senior"
           END-EVALUATE


           STOP RUN.
       END PROGRAM Ficha4ex4.
