       IDENTIFICATION DIVISION.
       PROGRAM-ID.  WRITE-FILE.
       AUTHOR.  Julien Gabryelewicz.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT BookFile ASSIGN TO "BOOKS.DAT" ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD BookFile.
       01 BookDetails.
           02  BookId       PIC 9(7).
           02  BookName     PIC X(9).
           02  BookYear     PIC 9(4).
       PROCEDURE DIVISION.
       Begin.
           OPEN OUTPUT BookFile.
           DISPLAY "Enter book details using template below.  Enter no data to end."
           PERFORM GetBookDetails
           PERFORM UNTIL BookDetails = SPACES
               WRITE BookDetails
               PERFORM GetBookDetails
           END-PERFORM
           CLOSE BookFile.
           STOP RUN.

       GetBookDetails.
           DISPLAY "Enter - Id, Name, Year"
           DISPLAY "IIIIIIINNNNNNNNNYYYY"
           ACCEPT  BookDetails.  
