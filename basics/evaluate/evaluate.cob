       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATE-EXAMPLE.
       AUTHOR. Julien Gabryelewicz.
       DATA DIVISION.
	   WORKING-STORAGE SECTION.
	   77 CHOICE PIC X(1).
	       88 YESCHOICE VALUE "Y", "y".
	       88 NOCHOICE VALUE "N", "n".
       PROCEDURE DIVISION.
           DISPLAY "Make your choice (Y/N) : " WITH NO ADVANCING.
           ACCEPT CHOICE.
           EVALUATE TRUE
             WHEN YESCHOICE DISPLAY "Yes"
             WHEN NOCHOICE DISPLAY "No"
             WHEN OTHER DISPLAY "Incorrect choice"
           END-EVALUATE.
           STOP RUN.
