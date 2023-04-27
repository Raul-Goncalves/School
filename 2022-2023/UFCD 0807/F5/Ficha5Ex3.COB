       IDENTIFICATION DIVISION.
       PROGRAM-ID. ficha5ex3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  num pic 999.
       01  my   pic 999V99.
       01  codigo PIC 999.
       88  codgnum VALUE 100 THRU 105.

       PROCEDURE DIVISION.
         ST.

           DISPLAY "Coloque o codigo do produto:"
           ACCEPT codigo

           IF NOT codgnum
                      DISPLAY"Codigo Invalido"
                      PERFORM ST
           END-IF.

           DISPLAY "Coloque a quantidade do produto:"
           ACCEPT num

           IF codigo = 100
               COMPUTE my=num*1.20+my
               DISPLAY "O preço sera de " my
           END-IF

           IF codigo = 101
               COMPUTE my=num*1.30+my
               DISPLAY "O preço sera de " my
           END-IF

           IF codigo = 102
               COMPUTE my=num*1.50+my
               DISPLAY "O preço sera de " my
           END-IF

           IF codigo = 103
               COMPUTE my=num*1.20+my
               DISPLAY "O preço sera de " my
           END-IF

           IF codigo = 104
               COMPUTE my=num*1.30+my
               DISPLAY "O preço sera de " my
           END-IF

           IF codigo = 105
               COMPUTE my=num*1.60+my
               DISPLAY "O preço sera de " my
           END-IF

           STOP RUN.
       END PROGRAM ficha5ex3.
