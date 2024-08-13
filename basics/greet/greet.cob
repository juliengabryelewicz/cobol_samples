       IDENTIFICATION DIVISION.
       PROGRAM-ID. GREET.
       AUTHOR. Julien Gabryelewicz.
       DATA DIVISION.
	   WORKING-STORAGE SECTION.
	   01 USERNAME PIC X(30).
       PROCEDURE DIVISION.
           DISPLAY "Who are you?".
           ACCEPT USERNAME.
           DISPLAY "Hello, "USERNAME.
           STOP RUN.
