       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALL-PROGRAM.
       AUTHOR. Julien Gabryelewicz.
       DATA DIVISION.
	   WORKING-STORAGE SECTION.
	   01 NUM1 PIC 9(1) VALUE ZEROS.
	   01 NUM2 PIC 9(1) VALUE ZEROS.
	   01 ANSWER PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY "Enter first number  (from 0 to 9) : " WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Enter second number (from 0 to 9) : " WITH NO ADVANCING.
           ACCEPT NUM2.
           CALL "MULTIPLY-CALL" USING BY CONTENT NUM1, NUM2 BY REFERENCE ANSWER.
           DISPLAY "Result = ", ANSWER.
           STOP RUN.
