        LOC     Data_Segment        % Datensegment
        GREG    @                   % Referenz hierhin in globales Reg
msg     BYTE    "Hello World",#A,0  % Nachricht

        LOC     #100                % Programmsegment
Main    LDA     $255,msg            % Nachrichtenadresse nach $255
        TRAP    0,Fputs,StdOut      % Ausgabe aus $255
        TRAP    0,Halt,0            % Programm beenden


