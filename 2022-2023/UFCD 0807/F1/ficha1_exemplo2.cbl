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
           DISPLAY "Insira um car�ter:- " WITH NO ADVANCING
           ACCEPT InputChar *> accept recebe um valor do teclado a atribuir � vari�vel InputChar
           IF ValidChar
           DISPLAY "Input OK!"
           ELSE
           DISPLAY "Entrada de car�ter inv�lido!"
           END-IF
           IF Vogal
           DISPLAY "Entrada de vogal"
           END-IF
           IF Digit
           DISPLAY "Entrada de d�gito"
           END-IF
           STOP RUN.
