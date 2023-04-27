       IDENTIFICATION DIVISION.
       PROGRAM-ID. FICHA3_EXEPLO12.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

         01 num1 PIC 999v9(3) VALUE 5.
         01 num2 PIC 999v9(3) VALUE 4.
         01 totalSoma PIC 999v9(3) VALUE ZEROS.
         01 totalSubtracao PIC 999v9(3) VALUE ZEROS.
         01 totalMultiplicao PIC 999v9(3) VALUE ZEROS.
         01 totalDivisao PIC 999v9(3) VALUE ZEROS.

           PROCEDURE DIVISION.

           calctotal.
               display "introduza um numero com um so digito: "
               accept num1
               display "introduza um numero com um so digito: "
               accept num2

               COMPUTE totalSoma = num1 + num2
               COMPUTE totalSubtracao = num1 - num2
               COMPUTE totalMultiplicao = num1 * num2
               COMPUTE totalDivisao ROUNDED = num1 / num2

               DISPLAY "soma: "  totalSoma
               DISPLAY "subtração: "  totalSubtracao
               DISPLAY "mutiplição: " totalMultiplicao
               DISPLAY "dvisão: " totalDivisao


           STOP RUN.
