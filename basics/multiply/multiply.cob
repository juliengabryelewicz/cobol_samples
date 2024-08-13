       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLY-TWO-NUMBERS.
       AUTHOR. Julien Gabryelewicz.
       DATA DIVISION.
	   WORKING-STORAGE SECTION.
	   01 NUM1 PIC 9(1) VALUE ZEROS.
	   01 NUM2 PIC 9(1) VALUE ZEROS.
	   01 RESULT PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY "Enter first number  (from 0 to 9) : " WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Enter second number (from 0 to 9) : " WITH NO ADVANCING.
           ACCEPT NUM2.
           MULTIPLY NUM1 BY NUM2 GIVING RESULT.
           DISPLAY "Result = ", RESULT.
           STOP RUN.
