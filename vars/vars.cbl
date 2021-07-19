       identification division.
       program-id. vars. 

       data division.
       working-storage section.
       01  ws-pi PIC S9(1)V9(10) VALUE 3.1415926535.
       01  ws-rad PIC S9(4)V9(2).
       01  ws-step1 PIC S9(4)V9(2).
       01  ws-threehalfs PIC S9(4)V9(2).

       procedure division.
           display "Berechnung des Volumens einer Kugel.".
           display "Bitte Radius Eingeben!".
           accept ws-rad.
           compute ws-step1 = ws-pi * (ws-rad ** 3).
           compute ws-threehalfs = (ws-step1 / 3) * 4.
           display "Volumen der Kugel: " ws-threehalfs.
       end program vars.