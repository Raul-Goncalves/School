
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ficha5ex4.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 num1 pic 999.
       01 num2 pic 999.
       01 areaa pic 999.
       01 operacion pic XXX.

       PROCEDURE DIVISION.


           DISPLAY "Tipo de opera��o"
           ACCEPT operacion
           DISPLAY"Bota o primeiro numero"
           ACCEPT num1
           DISPLAY"Bota o segundo numero"
           ACCEPT num2

           EVALUATE operacion

                WHEN "+"
                COMPUTE areaa=num1 + num2+areaa

                WHEN "-"
                COMPUTE areaa=num1 - num2+areaa

                WHEN "*"
                COMPUTE areaa=num1 * num2+areaa

                WHEN "/"
                COMPUTE areaa=num1 / num2+areaa


           END-EVALUATE

              DISPLAY areaa

           STOP RUN.
       END PROGRAM ficha5ex4.
