      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  UserName PIC X(20).
       01  CurrentDate.
         02  CurrentYear PIC 99.
         02  CurrentMonth PIC 99.
         02  CurrentDay PIC 99.
       01  DayOfWeek PIC 9.
       01  DayOfYear.
        02  FILLER PIC 99.
        02  YearDay PIC 9(3).
       01  CurrentTime.
        02  CurrentHour PIC 99.
        02  CurrentMinute PIC 99.
        02  FILLER PIC 9(4).
       01  Y2KDate.
        02  Y2KYear PIC 9(4).
        02  Y2KMonth PIC 99.
        02  y2KDay PIC 99.
       01  Y2KDayOfYear.
        02  Y2KYear2 PIC 9(4).
        02  Y2KDay2 PIC 999.
       PROCEDURE DIVISION.
           DISPLAY "Insere o teu nome: "
           ACCEPT UserName
           DISPLAY "****************"
           ACCEPT CurrentDate FROM DATE
           ACCEPT DayOfYear FROM DAY
           ACCEPT DayOfWeek FROM DAY-OF-WEEK
           ACCEPT CurrentTime FROM TIME
           ACCEPT Y2KDate FROM DATE YYYYMMDD
           ACCEPT Y2KDayOfYear FROM DAY YYYYDDD
           DISPLAY "O Nome é " UserName
           DISPLAY "a data é " CurrentDay CurrentMonth CurrentYear
           DISPLAY "Hoje é " DayOfWeek
           DISPLAY " Hoje é o dia "DayOfYear" do ano."
           DISPLAY "São "CurrentHour" :" CurrentMinute.
           DISPLAY " Y2KData é "Y2kDay SPACE Y2kMonth SPACE Y2kYear
           DISPLAY " Y2k Dia do ano é "Y2KYear2 " do ano de "Y2KDay2
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
