       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLGREENTING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

        77 a PIC 9(002) VALUE 0.
        77 b PIC 9(002) VALUE 0.
        77 c PIC -Z9.

           PROCEDURE DIVISION.

           DISPLAY "Insira A:"
           ACCEPT a
           DISPLAY "Insira B:"
           ACCEPT b

           SUBTRACT b FROM a GIVING c ON SIZE ERROR

           DISPLAY "Impossivel calcular, variável pequena"

           GOBACK
           END-SUBTRACT
           DISPLAY"A-B="c
           ACCEPT OMITTED
           GOBACK.

           STOP RUN.
