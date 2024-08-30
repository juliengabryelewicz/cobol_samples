       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZBUZZ.
       AUTHOR. Julien Gabryelewicz.
       DATA DIVISION.
	   WORKING-STORAGE SECTION.
           01 NUMBERFB PIC 9(03) VALUE 1.
           01 REST PIC 9(03) VALUE 0.
           01 ANSWER PIC 9(03) VALUE 0.
       PROCEDURE DIVISION.
           PERFORM UNTIL NUMBERFB > 100
               DIVIDE 15 INTO NUMBERFB GIVING ANSWER REMAINDER REST
               IF REST = 0 THEN
                   DISPLAY "FizzBuzz"
               ELSE
                   DIVIDE 3 INTO NUMBERFB GIVING ANSWER REMAINDER REST
                   IF REST = 0 THEN
                       DISPLAY "Fizz"
                   ELSE
                       DIVIDE 5 INTO NUMBERFB GIVING ANSWER REMAINDER REST
                       IF REST = 0 THEN
                           DISPLAY "Buzz"
                       ELSE
                           DISPLAY NUMBERFB
                       END-IF
                   END-IF
               END-IF
               ADD 1 TO NUMBERFB
           END-PERFORM
           STOP RUN.
