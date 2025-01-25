01  WS-DATA PIC 9(5) VALUE ZEROS.
01  WS-DATA-FLAG PIC 9 VALUE 0.

* Some COBOL statements...

ADD 1 TO WS-DATA.

IF WS-DATA > 99999 THEN
    SET WS-DATA-FLAG TO 1
    DISPLAY "Warning: WS-DATA approaching maximum value!" 
    MOVE 99999 TO WS-DATA
ELSE
    SET WS-DATA-FLAG TO 0
END-IF.

IF WS-DATA-FLAG = 1 THEN
    *Handle the situation appropriately. For example, log an event, set a flag, or take corrective action.
END-IF.