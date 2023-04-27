       IDENTIFICATION DIVISION.
       PROGRAM-ID. ficha5ex1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  num pic 99.
       01  plan PIC A.
       88  plano VALUE "0","1","2","3","4","5","6","7","8","9","10".

       PROCEDURE DIVISION.
         ST.

           DISPLAY "Coloque um numero para nois:"
           ACCEPT plan

           IF NOT plano
                      DISPLAY"Plano Invalido"
                      PERFORM ST
           END-IF.

           IF plan = "0"
               DISPLAY "ZERO"
           END-IF
           IF plan = "1"
               DISPLAY "UM"
           END-IF
           IF plan = "2"
               DISPLAY "DOIS"
           END-IF
           IF plan = "3"
               DISPLAY "TRÊS"
           END-IF

           IF plan = "4"
               DISPLAY "QUATRO"
           END-IF

           IF plan = "5"
               DISPLAY "CINCO"
           END-IF

           IF plan = "6"
               DISPLAY "SEIS"
           END-IF

           IF plan = "7"
               DISPLAY "SETE"
           END-IF

           IF plan = "8"
               DISPLAY "OITO"
           END-IF

           IF plan = "9"
               DISPLAY "NOVE"
           END-IF

           IF plan = "10"
               DISPLAY "DEZ"
           END-IF


           STOP RUN.
       END PROGRAM ficha5ex1.
