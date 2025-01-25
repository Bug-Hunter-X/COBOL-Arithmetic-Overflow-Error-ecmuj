01  WS-DATA PIC 9(5) VALUE ZEROS.

* Some COBOL statements...

ADD 1 TO WS-DATA.

IF WS-DATA > 99999 THEN
    DISPLAY "Error: WS-DATA exceeded maximum value!" 
    STOP RUN.
END-IF.