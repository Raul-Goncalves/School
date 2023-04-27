       IDENTIFICATION DIVISION.
       PROGRAM-ID. FICHA3EX1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
         01 ws-registo.
         05 ws-numero PIC 9(004).
         05 ws-nome PIC X(030).
         05 ws-profissional PIC X(025).
           PROCEDURE DIVISION.
      *    INITIALIZE ws-registo.
           INITIALIZE ws-registo REPLACING NUMERIC DATA BY 3
           ALPHANUMERIC DATA BY "X"
               DISPLAY ws-registo
            STOP RUN.
       END PROGRAM FICHA3EX1.
