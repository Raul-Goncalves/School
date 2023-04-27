       IDENTIFICATION DIVISION.
       PROGRAM-ID. ficha5ex4.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 outro pic 999.
       01 resultado1 pic 999.
       01 resultado2 pic 999.

       PROCEDURE DIVISION.


           PERFORM VARYING resultado1 from 1 by 1 UNTIL resultado1>5
           PERFORM VARYING resultado2 from 1 by 1 UNTIL resultado2>10
           MULTIPLY resultado1 by resultado2 GIVING outro
           DISPLAY resultado1 "x" resultado2 "=" outro
           END-PERFORM
           DISPLAY"                                                    "
           END-PERFORM



           STOP RUN.
       END PROGRAM ficha5ex4.
