      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 InputChar PIC X.
        88 Vogal VALUE "A","E","I","O","U".
        88 Consoante VALUE "B" THRU "D", "F","G","H",
             "J" THRU "N", "P" THRU "T","V" THRU "Z".
        88 Digit VALUE "0" THRU "9".
        88 ValidChar VALUE "A" THRU "Z", "0" THRU "9".
           PROCEDURE DIVISION.
           BEGIN.
           DISPLAY "Insira um caráter:- " WITH NO ADVANCING
           ACCEPT InputChar *> accept recebe um valor do teclado a atribuir à variável InputChar
           IF ValidChar
           DISPLAY "Input OK!"
           ELSE
           DISPLAY "Entrada de caráter inválido!"
           END-IF
           IF Vogal
           DISPLAY "Entrada de vogal"
           END-IF
           IF Digit
           DISPLAY "Entrada de dígito"
           END-IF
           STOP RUN.
