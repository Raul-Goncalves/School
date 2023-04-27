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

           EVALUATE codigo
               WHEN "100"
               COMPUTE my=num*1.20+my
               DISPLAY "Preço sera de "my

               WHEN "101"
               COMPUTE my=num*1.30+my
               DISPLAY "Preço sera de "my

               WHEN "102"
               COMPUTE my=num*1.50+my
               DISPLAY "Preço sera de "my

               WHEN "103"
               COMPUTE my=num*1.20+my
               DISPLAY "Preço sera de "my

               WHEN "104"
               COMPUTE my=num*1.30+my
               DISPLAY "Preço sera de "my

               WHEN "105"
               COMPUTE my=num*1.60+my
               DISPLAY "Preço sera de "my

           END-EVALUATE

           STOP RUN.
       END PROGRAM ficha5ex3.
