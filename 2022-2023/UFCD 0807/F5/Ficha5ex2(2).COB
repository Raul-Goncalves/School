       IDENTIFICATION DIVISION.
       PROGRAM-ID. ficha5ex1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  num pic 99.
       01  plan PIC A.
       88  plano VALUE "0","1","2","3","4","5","6","7","8","9","10".

       PROCEDURE DIVISION.

           inicio.
           DISPLAY "Digite um numero:"
           ACCEPT plan

           EVALUATE plan
               WHEN "0"
               DISPLAY "ZERO"

               WHEN "1"
               DISPLAY "UM"

               WHEN "2"
               DISPLAY "DOIS"

               WHEN "3"
               DISPLAY "TRÊS"

               WHEN "4"
               DISPLAY "QUATRO"

               WHEN "5"
               DISPLAY "CINCO"

               WHEN "6"
               DISPLAY "SEIS"

               WHEN "7"
               DISPLAY "SETE"

               WHEN "8"
               DISPLAY "OITO"

               WHEN "9"
               DISPLAY "NOVE"

               WHEN "10"
               DISPLAY "DEZ"

                WHEN OTHER
                DISPLAY "Numero invalido"
                GO TO inicio
            END-EVALUATE.

           STOP RUN.
       END PROGRAM ficha5ex1.
