       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULATOR.
       AUTHOR. Julien Gabryelewicz.
       DATA DIVISION.
	   WORKING-STORAGE SECTION.
	   01 NUM1 PIC 9(1) VALUE ZEROS.
	   01 NUM2 PIC 9(1) VALUE ZEROS.
	   01 OPERATOR PIC X(1).
	   01 RESULT PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY "Enter first number  (from 0 to 9) : " WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Enter second number (from 0 to 9) : " WITH NO ADVANCING.
           ACCEPT NUM2.
           DISPLAY "Enter operator (+,-,/ or *) : " WITH NO ADVANCING.
           ACCEPT OPERATOR.
           IF OPERATOR = "+" THEN
	       ADD NUM1, NUM2 GIVING RESULT
           END-IF
           IF OPERATOR = "-" THEN
	       COMPUTE RESULT = NUM1 - NUM2
           END-IF
           IF OPERATOR = "*" THEN
	       MULTIPLY NUM1 BY NUM2 GIVING RESULT
           END-IF
           IF OPERATOR = "/" THEN
	       DIVIDE NUM1 BY NUM2 GIVING RESULT
           END-IF
           DISPLAY "Result = ", RESULT.
           STOP RUN.
