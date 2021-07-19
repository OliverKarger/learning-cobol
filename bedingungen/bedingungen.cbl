       Identification Division.
       Program-Id. bedingungen.
       
       Data Division.
       Working-Storage Section.
       01  WS-Option PIC X(10).
       01  WS-Wuerfel.
           05 WS-L PIC S9(4)V9(2).
           05 WS-B PIC S9(4)V9(2).
           05 WS-H PIC S9(4)V9(2).
       01  WS-Volumen PIC S9(4)V9(2).
       01  WS-Oberflaeche PIC S9(4)V9(2).

       Procedure Division.
           Display "Berechnung eines Würfels.".
           Display "Bitte geben Sie Länge, Breite und Höhe an!". 
           Accept WS-L.
           Accept WS-B.
           Accept WS-H.
           Display "Berechnen von Fläche oder Volumen des Würfels?".
           Accept WS-Option.
           If WS-Option = "Fläche" Then
                Compute WS-Oberflaeche = 6 * (WS-L ** 2)
                Display WS-Oberflaeche
           End-If

           If WS-Option = "Volumen" Then
               Compute WS-Volumen = WS-L * WS-B * WS-H
               Display WS-Volumen
           End-If.
               

       End Program bedingungen.
       