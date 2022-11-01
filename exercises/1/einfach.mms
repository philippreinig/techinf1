        LOC     #100        % Start des Programms im Speicher
x       IS      $42         % Ersetze `x' im Programm durch $42
y       IS      $43         ...
z       IS      $44         ...
num     BYTE

Main    SET     x,40        % Beginn Hauptprogramm:
                            % Setze x (also Register 42) auf Wert 40
        SET     y,7         % Setze y auf 7
        
        MUL     z,x,y       % Multipliziere Reg. 42 mit Reg. 43
                            % schreibe Ergebnis nach Reg. 44

        ADD     z,z,3
        DIV     y,z,13
        TRAP    0,Halt,0    % Ende des Programms