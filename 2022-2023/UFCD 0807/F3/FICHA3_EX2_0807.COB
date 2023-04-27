       IDENTIFICATION DIVISION.
       PROGRAM-ID. FICHA3EX2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
        77 NUMERO PIC 9(004).
           PROCEDURE DIVISION.
           INICIO.
           DISPLAY "Informe um numero"
           ACCEPT NUMERO
           IF NUMERO=0
               GO TO FIM
           END-IF
           DISPLAY "Você digitou o numero: "NUMERO

           GO TO INICIO.

           FIM.
           STOP RUN.
       END PROGRAM FICHA3EX2.
